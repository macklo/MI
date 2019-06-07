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

for i = 1:size(modData, 2)
	column = modData(:, i);
	modData(:, i) = normalize(column, 'range' ,[-1,1]);
end

figure
stairs(modData)

trainData = modData(1:(floor(size(modData, 1)/2)), :);
testData  = modData(floor(size(modData, 1)/2) + 1:end, :);

figure
	stairs(trainData);
	title("Dane trenuj¹ce")
	
figure
	stairs(testData);
	title("Dane testowe")
