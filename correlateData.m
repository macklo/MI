close all
clear
clc
load('data/data.mat')
load('data/varNames.mat')
load('data/sets.mat')
load("data/dataSets.mat")

uDataSets = cell(size(dataSets));
yDataSets = cell(size(dataSets));
uDataSetsSmooth = cell(size(dataSets));
yDataSetsSmooth = cell(size(dataSets));
minValsSets = cell(size(dataSets));
maxValsSets = cell(size(dataSets));

for iterator = 1:size(dataSets, 1)
	data = dataSets{iterator};
	modData = dataSets{iterator};
	u = data(:, 1:end-2);
	uNames = variableNames(1:end-2);

	y = data(:, end-1:end);
	yNames = variableNames(end-2:end);
	labels = [];

	removedColums = [];

	for set = setIndex
		for i = set{1}
			if ~ismember(i, removedColums)
				removedColums = [removedColums i];
			end
		end
	end

	removedColums = sort(removedColums, 2, 'descend');
	variableNamesMod = variableNames;

	for columnToRemove = removedColums
		modData(:, columnToRemove) = [];
		variableNamesMod(columnToRemove) = [];
	end

	modY = modData(:, end-1:end);
	modData = modData(:, 1:end-2);

	for set = setIndex
		labels = [];
		newVariable = zeros(size(data, 1), 1);
	% 	figure
	% 		hold on
		for i = set{1}
% 			stairs(data(:, i))
			labels = [labels, stringVariableNames(i)];
			newVariable = newVariable + data(:, i);
		end
		newVariable = newVariable / size(set{1}, 2);
	% 	stairs(newVariable);
	% 	labels = [labels, "Nowa zmienna"];
	% 	legend(labels);
		modData = [modData, newVariable];
		variableNamesMod = [variableNamesMod, {"nowa zmienna"}];
	end

	modData(:, 9) = [];
	variableNamesMod(9) = [];

	modData = [modData, modY];

	maxVals  = zeros(size(modData, 2), 1);
	minVals  = zeros(size(modData, 2), 1);

	for i = 1:size(modData, 2)
		column = modData(:, i);
		maxVals(i) = max(column);
		minVals(i) = min(column);
		modData(:, i) = ((modData(:, i) - minVals(i)) / (maxVals(i) - minVals(i))) * 2 - 1;
	end

	minValsSets{iterator} = minVals;
	maxValsSets{iterator} = maxVals;

% 	figure
% 	stairs(modData)
% 	legend(variableNamesMod);

	uMod = modData(:, 1:end-2);
	uModSmooth = modData(:, 1:end-2);
	for i = 1:size(uMod, 2)
		uModSmooth(:, i) = smooth(uModSmooth(:, i), 100);
	end
	
	yMod = modData(:, end-1 : end);
	yModSmooth = modData(:, end-1 : end);
	for i = 1:size(yMod, 2)
		yModSmooth(:, i) = smooth(yModSmooth(:, i), 100);
	end
	
	uDataSets{iterator} = uMod;
	yDataSets{iterator} = yMod;
	
	uDataSetsSmooth{iterator} = uModSmooth;
	yDataSetsSmooth{iterator} = yModSmooth;

	% uTrain = modData(1:(floor(size(modData, 1)/2)), 1:end-2);
	% yTrain = modData(1:(floor(size(modData, 1)/2)), end-1 : end);
	% 
	% uTest  = modData(floor(size(modData, 1)/2) + 1:end, 1:end-2);
	% yTest  = modData(floor(size(modData, 1)/2) + 1:end, end-1 : end);

	figure
		subplot(2, 1, 1)
			stairs(uMod);
			title("u")

		subplot(2, 1, 2)
			stairs(yMod);
			title("y")
	
end

u1=uDataSets{1};
u2=uDataSets{2};
u3=uDataSets{3};
u4=uDataSets{4};
y1=yDataSets{1};
y2=yDataSets{2};
y3=yDataSets{3};
y4=yDataSets{4};