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
end
