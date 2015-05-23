# Getting and Cleaning Data Course Project
The purpose of the project was to collect, work with and clean a dataset on the "Human Activity Recognition Using Smartphones" found at the Machine Learning Repository:
- http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
A zip file containg all the data used in the project, can be found here:
- https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

A detailed description of the raw data set is present in the website listed above. Here, I will attain to the modifications I made in an attempt to clean the dataset by using R programming Language.
- The data found in X_test.txt and X_train.txt were merged;
- The variables were given names according to the text file activity_labels.txt;
- Only the variables corresponding to the mean or standard deviation for each measurement were kept in the dataset;
- The subjects' ID files for the test (subject_test.txt) and train (subject_train.txt) groups were merged and added as a new variable to the dataset;
- The activities files for the test (y_test.txt) and train (y_train.txt) groups were merged and added as a new column to the dataset;
- The numbering scheme for the activities variable was replaced by the actual labels for the activities;
- The data set was grouped by activity and subject's ID respectively;
- The final tidy data set contains the average of each variable for each activity and each subject. There are 181 lines (6 activities for 30 subjects + Variable Names) and 81 columns.

Below there is a brief description for the measurement variables extracted from the original README file in the dataset: 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation
