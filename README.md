Course project for Coursera Getting and Cleaning Data.
------------------------
Instruction:
  1. Please download data from url:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
  2. unzip dataset
  3. run R and set working directory to first level directory of unziped dataset
  4. run run_analysis.R

Script produces two data frames: 
* myData - selected data from SAMASUNG training and test data 
* myTidy - independent tidy data set with the average of each variable for each activity and each subject. 

For more lecture-43/slied-16 friendly names use:
 
 colnames(myTidy) <-gsub("^t","",gsub("^f","fft",gsub("_","-",tolower(colnames(myTidy)))))


Script uses sqldf library.
