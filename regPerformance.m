% This scripts is for emoPain 2020 challenge of IEEE International Conference on Automatic Face & Gesture Recognition 2020
% This scripts is the baseline code of performance evaluation
% Author: Siyang Song
% If there is any problem, please contact siyang.song@nottingham.ac.uk

function [ MAE, RMSE, pcc, ccc_value ] = regPerformance( predLabel, groundTruth )

MAE = mean(mean(abs(predLabel-groundTruth)));

RMSE = sqrt(sum((predLabel-groundTruth).^2)/size(predLabel,1));

pcc = corr(predLabel,groundTruth);

ccc_value = CCC(predLabel,groundTruth);

end

