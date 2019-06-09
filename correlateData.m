close all
clear
clc
load('data/data.mat')
load('data/varNames.mat')
load('data/sets.mat')
load("data/dataSets.mat")

uDataSets = cell(size(dataSets));
yDataSets = cell(size(dataSets));
minValsSets = cell(size(dataSets));
maxValsSets = cell(size(dataSets));

for i = 1:size(dataSets, 1)
	modData = data;
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

	minValsSets{i} = minVals;
	maxValsSets{i} = maxVals;

% 	figure
% 	stairs(modData)
% 	legend(variableNamesMod);

	uMod = modData(:, 1:end-2);
	yMod = modData(:, end-1 : end);
	uDataSets{i} = uMod;
	yDataSets{i} = yMod;

	% uTrain = modData(1:(floor(size(modData, 1)/2)), 1:end-2);
	% yTrain = modData(1:(floor(size(modData, 1)/2)), end-1 : end);
	% 
	% uTest  = modData(floor(size(modData, 1)/2) + 1:end, 1:end-2);
	% yTest  = modData(floor(size(modData, 1)/2) + 1:end, end-1 : end);

	figure
		stairs(uMod);
		title("u")

	figure
		stairs(yMod);
		title("y")
	
end