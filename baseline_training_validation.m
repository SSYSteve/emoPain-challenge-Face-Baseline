% This scripts is for emoPain 2020 challenge of IEEE International Conference on Automatic Face & Gesture Recognition 2020
% This scripts is the baseline code of training and validation
% Author: Siyang Song
% If there is any problem, please contact siyang.song@nottingham.ac.uk
clear all; clc

'loading data'
%load the training data and label here (please custom the path)

train_data = load('./train_data.mat');
train_data = train_data.data;
train_label = load('./train_label.mat');
train_label = train_label.label;

% set size of hidden fc layers
hs = 64; 

X_train = reshape(train_data',1,size(train_data,2),1,size(train_data,1));
clear train_data

% define the net
layers = [imageInputLayer([1 size(X_train,2) 1]); fullyConnectedLayer(1024); reluLayer; dropoutLayer(0.5); fullyConnectedLayer(256); reluLayer; dropoutLayer(0.5);  fullyConnectedLayer(hs); reluLayer; dropoutLayer(0.5); fullyConnectedLayer(1); regressionLayer];
options = trainingOptions('rmsprop','InitialLearnRate',0.005, 'MaxEpochs',5, 'MiniBatchSize',128);

'start training'

%net training
net = trainNetwork(X_train,train_label.label,layers,options);

clear X_train
clear train_label


% load the validation data and label here (please custom the path
valid_data = load('./valid_data.mat');
valid_data = valid_data.data;
valid_label = load('./valid_label.mat');
valid_label = valid_label.label;

X_valid = reshape(valid_data',1,size(valid_data,2),1,size(valid_data,1));

% validation
predictions = predict(net,X_valid);

% output validation results
[ MAE, RMSE, pcc, ccc] = regPerformance( predictions, valid_label)

