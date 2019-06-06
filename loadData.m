close all
clear
clc

% A = readtable("data/dane10sec.xlsx");

load('data/data.mat')

podajniki = data(:, 17:22);

R = corrcoef(podajniki);

plot(podajniki)

totalCorrelation = corrcoef(data);

lags = 27960;

autoCorrelations = zeros(lags+1, 22);

for i = 1:22 
	figure
	autocorr(data(:, i), lags)
	autoCorrelations(:, i) = autocorr(data(:, i), lags);
end
