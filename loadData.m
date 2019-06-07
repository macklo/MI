close all
clear
clc

% A = readtable("data/dane10sec.xlsx");

% variableNames = A.Properties.VariableNames(3:end);
% stringVariableNames = [];
% for v = variableNames
% 	stringVariableNames = [stringVariableNames; string(v)];
% end

load('data/data.mat')
load('data/varNames.mat')

podajniki = data(:, 17:22);

u = data(:, 1:end-2);
uNames = variableNames(1:end-2);
y = data(:, end-2:end);
yNames = variableNames(end-2:end);

figure
subplot(2, 1, 1)
	plot(u)
	legend(uNames)
subplot(2, 1, 2)
	plot(y)
	legend(yNames)


totalCorrelation = corrcoef(data);

lags = 27960;

autoCorrelations = zeros(lags+1, 22);
% 
% for i = 1:22 
% % 	figure
% % 	autocorr(data(:, i), lags);
% 	autoCorrelations(:, i) = autocorr(data(:, i), lags);
% end

[maxVals, maxIndex] = max(totalCorrelation - eye(size(totalCorrelation)));
threshold = 0.75;
signals = totalCorrelation - eye(size(totalCorrelation)) > threshold;

sets = cell(22, 1);
setIterator = 1;

for i = 1:22
	set = [];
	for j = 1:22
		if signals(i, j)
			set = [set stringVariableNames(j)];
% 			signals(j, i) = 0;
		end
	end
	sets{i} = set;
end

for i = 1:22
	if size(sets{i}, 2)
		fprintf(stringVariableNames(i) + ": ")
		for j = 1:size(sets{i}, 2)
			fprintf(sets{i}(j) + ", ")
		end
		fprintf("\n");
	end
end
