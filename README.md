# Getting and Cleaning Data Course Project
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data collected from the accelerometers from the Samsung Galaxy S smartphone is descripted in the next site:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here is the data that was used to create the tidy data set:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This repository contains the following files:

+ `README.md` that explains how the data set was created
+ `run_analysis.R` the R script that was used to build the data set
+ `tidy_data.txt` which is the data set 
+ `CodeBook.md` which indicates all the variables and summaries calculated, along with units

# Creating the tidy data set
1. The training and the test data sets were merged to create one data set
2. The measurements on the mean and standard deviation for each measurement were extracted
3. The measurements were averaged for each subject and activity

The R script `tidy_data.R` can be used to create from the begining to the end the `tidy_data.txt` data set. It does the following steps:

+ Download the data
+ Unzip the data
+ Read the data
+ Merge the training and test data sets into one data set
+ Keeps only mean and standard deviation variables for each measurement
+ Changes the names of the variables
+ Create a tidy set with the average of each variable for each activity and each subject
+ Write the data set to the `tidy_data.txt` file

R version 3.4.4 (2018-03-15)
