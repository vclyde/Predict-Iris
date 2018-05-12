close all; clear; clc;

% Read csv file
Data = csvread('../resources/IrisMappedDataSet.csv');

% Contains sepal and petal lengths and widths of the 3 species
X = Data(:, 1:4);

% Contains mapped values of Iris species 
% 0 for Iris setosa
% 1 for Iris versicolor
% 2 for Iris virginica
y = Data(:, 5); 

% Plot data to scatter chart
plotDataFunc(X, y);

% Load preprocessed data sets
% Separated training, cross-validation and test data sets
Setosa = Data(find(y == 0), :);
Versicolor = Data(find(y == 1), :);
Virginica = Data(find(y == 2), :);
[Training CrossValidation Test] = splitDataSetFunc(Setosa, Versicolor, Virginica);

