% This scripts is for emoPain 2020 challenge of IEEE International Conference on Automatic Face & Gesture Recognition 2020
% This scripts is the baseline code of testing
% Author: Siyang Song
% If there is any problem, please contact siyang.song@nottingham.ac.uk
clear all; clc

% load the training net and test label here (please custom the path)
mdl = load('best_model.mat');
mdl = mdl.net;

% load test data and label
test_data = load('./test_data.mat');
test_data = test_data.data;
test_label = load('./test_label.mat');
test_label = test_label.label;

% predict and evluate the test data
X_test = reshape(test_data',1,size(test_data,2),1,size(test_data,1));
predictions = predict(mdl,X_test);
[ MAE, RMSE, pcc, ccc] = regPerformance( predictions, test_label)

