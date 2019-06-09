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
load('data/time.mat')

timeVals = zeros(size(timeCell));

for i = 1:size(timeCell, 1)
	time = timeCell{i};
	strrep(time,':','');
	timeVals(i) = str2num(strrep(time,':',''));
end

breaks = [0];

startPoint = 2;
found = 0;
while 1
	for i = startPoint:6:size(timeVals, 1)
		for j = i:i+4
			if (timeVals(j) - timeVals(j-1) ~= 10)
				breaks = [breaks; j-1];
				found = 1;
				break
			end
		end
		if found
			break
		end
	end
	startPoint = j+1;
	found = 0;
	if i+6 > size(timeVals, 1)
		break;
	end
end

dataSets = cell(size(breaks, 1), 1);

for i = 2:size(breaks, 1)
	dataSets{i -1} = data(breaks(i-1)+1:breaks(i), :);
end
dataSets{i} = data(breaks(i):end, :);

for i = 1:size(dataSets, 1)
	figure
	stairs(dataSets{i});
end

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
