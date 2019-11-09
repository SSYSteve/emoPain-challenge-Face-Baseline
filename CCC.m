% This scripts is for emoPain 2020 challenge of IEEE International Conference on Automatic Face & Gesture Recognition 2020
% This scripts is the baseline code of concordance correlation coefficient (CCC)
% Author: Siyang Song
% If there is any problem, please contact siyang.song@nottingham.ac.uk

function [ccc_value] = CCC(predictions,test_label)

pcc = corr(predictions,test_label);
theta_a = var(predictions);
theta_b = var(test_label);

ccc_value = (2*pcc*theta_a*theta_b)/(theta_a^2 + theta_b^2 + (mean(predictions)-mean(test_label))^2);




end

