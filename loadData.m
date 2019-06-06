close all
clear
clc

% A = readtable("data/dane10sec.xlsx");

load('data/data.mat')

podajniki = data(:, 17:22);

R = corrcoef(podajniki);

plot(podajniki)

totalCorrelation = corrcoef(data);

autoCorrelation = autocorr(data);