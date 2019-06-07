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
y = data(:, end-1:end);
yNames = variableNames(end-1:end);

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
threshold = 0.78;
signals = totalCorrelation - eye(size(totalCorrelation)) > threshold;

sets = {};
setIndex = {};
setIterator = 1;

flag = sum(signals);

for i = 1:22
	if flag(i)
		set = [stringVariableNames(i)];
		setIndex{setIterator} = [i];
		for j = 1:22
			if signals(i, j)
				set = [set stringVariableNames(j)];
				setIndex{setIterator} = [setIndex{setIterator} j];
				flag(j) = 0;
			end
		end
		sets{setIterator} = set;
		setIterator = setIterator + 1;
	end
end

for i = 1:setIterator-1
	if size(sets{i}, 2)
		for j = 1:size(sets{i}, 2)
			fprintf(sets{i}(j) + ", ")
		end
		fprintf("\n");
	end
end
