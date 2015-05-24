#Getting and Cleaning Data
##Course Project Submission
Besides this README.txt file, this repository contains two other files: CodeBook.md and run_analysis.R .
- CodeBook.md is a markdown file that describes the modifications made to the Human Activity Recognition Using Smartphones Data Set.
- run_analysis.R is an R script created with R version 3.2.0, whose output is a text file with the cleaned data set described in the CodeBook. 

Summary of the analysis design:
- The relevant files ("X_xxxx.txt","subject_xxxx.txt" and "y_xxxx.txt") for both the train and test set were loaded into R with "read.table()" and so were the activity labels ("activity_labels.txt") and variable names ("features.txt").
- The sets of data were merged in a step by step basis.
- At first, the data sets containing the measurements ("X_xxxx.txt") were joined, having the rows as reference.
- Then the variables corresponding to the mean and standard deviation were selected by greping the names which contained "mean" or "std".
- Logical indexing was applied to reduce the measurement data into these variables.
- The Subjects' ID and activities for test and train data sets were joined and added as columns to the measurement data frame. The names for these variables "Subject" and "Activity" were appended to the names vector.
- Finally the variable names were added to the data frame.
- A loop structure was used to go through the "Activity" column and replace the numbering scheme with the actual labels found in "activity_labels.txt".
- Finally the data was grouped by "Activity" and "Subject" and the mean for each measurement for each group was calculated. 
- The resulting data frame was then saved in a file "tidy_dataset.txt". 

