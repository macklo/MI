close all
clear
clc
load('data/data.mat')
load('data/varNames.mat')
load('data/sets.mat')


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

for columnToRemove = removedColums
	modData(:, columnToRemove) = [];
end

modY = modData(:, end-1:end);
modData = modData(:, 1:end-2);

for set = setIndex
	labels = [];
	newVariable = zeros(size(data, 1), 1);
	figure
		hold on
	for i = set{1}
		stairs(data(:, i))
		labels = [labels, stringVariableNames(i)];
		newVariable = newVariable + data(:, i);
	end
	newVariable = newVariable / size(set{1}, 2);
	stairs(newVariable);
	labels = [labels, "Nowa zmienna"];
	legend(labels);
	modData = [modData, newVariable];
end

modData(:, 9) = [];

modData = [modData, modY];

for i = 1:size(modData, 2)
	column = modData(:, i);
	modData(:, i) = normalize(column, 'range' ,[-1,1]);
end

figure
stairs(modData)

uTrain = modData(1:(floor(size(modData, 1)/2)), 1:end-2);
yTrain = modData(1:(floor(size(modData, 1)/2)), end-1 : end);

uTest  = modData(floor(size(modData, 1)/2) + 1:end, 1:end-2);
yTest  = modData(floor(size(modData, 1)/2) + 1:end, end-1 : end);

figure
	stairs(uTrain);
	title("x trenuj¹ce")
	
figure
	stairs(yTrain);
	title("y trenuj¹ce")

figure
	stairs(uTest);
	title("x testowe")

figure
	stairs(yTest);
	title("y testowe")
