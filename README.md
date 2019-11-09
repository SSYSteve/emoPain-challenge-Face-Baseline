# emoPain-challenge-Face-Baseline
The code is the emoPain 2020 challenge baseline

This file is the baseline scripts for emoPain 2020 challenge 
https://mvrjustid.github.io/EmoPainChallenge2020/

The VGG and ResNet feature extraction code is in https://github.com/SSYSteve/Deep-emotion-feature-extraction 

This file introduces the usage of the baseline code. If there is any problem, please contact siyang.song@nottingham.ac.uk

# baseline_training_validation.m: 
The script for training and validation. You can use this script to tune the hyper-parameters and structures of the net. Before running this script, you need to prepare you training and validation data and labels to ‘.mat’ format, and change the corresponding path in the script to load them. Once you obtained the best model, you should save it manually.

# baseline_testing.m: 
The script for testing. You can use this script to test the saved model on the test set. Four results, e.g. RMSE, MAE, PCC, CCC, will be given by the code.

# CCC.m: 
The script for computing concordance correlation coefficient.

# Read_HOG_file.m: 
The script for reading hog features (.HOG).

# regPerformance.m: 
The script for computing RMSE, MAE, PCC, and CCC.

