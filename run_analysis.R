## main script for courseproject Getting and Cleaning Data, 
## script produce two data frames: 
##  - myData - selected data from SAMASUNG training and test data 
##  - myTidy - independent tidy data set with the average of each variable for each activity and each subject. 
myTidy <- NULL
myData <- NULL
## we use sqldf 
library("sqldf")

  ## read features desctptifor file
  ffHeaders <- read.table("features.txt")
  ## we make  1. Merges the training and the test sets to create one data set.
  ## and      2.Extracts only the measurements on the mean and standard deviation for each measurement. 
  ## extarct class vector for reading only reqired data and preserve descriptive colmun names
  colClasses <- c();
  myHeaders <- c();
  for(i in 1:nrow(ffHeaders)){
    if (grepl("mean\\(\\)|std\\(\\)", ffHeaders[i,2])==1){
      ## replace "-" with "_" ande remove "()" from features names
      myHeaders <- c(myHeaders, gsub("-","_",gsub("\\(|\\)","",toString(ffHeaders[i,2]))))
      colClasses <- c(colClasses,NA)
    }else{
      colClasses <- c(colClasses,"NULL")
    }
  }
  
  ## read training set
  train.X <- read.table("train/X_train.txt", colClasses=colClasses)
  train.Subject <- read.table("train/subject_train.txt")
  train.Y <- read.table("train/y_train.txt")
  ## combine and clean
  train <- cbind(train.Subject, train.X, train.Y)
  rm(train.X,train.Subject,train.Y)
  
  ## read test set
  test.X <- read.table("test/X_test.txt", colClasses=colClasses)
  test.Subject <- read.table("test/subject_test.txt")
  test.Y <- read.table("test/y_test.txt")
  ## combine and clean
  test <- cbind(test.Subject, test.X, test.Y)
  rm(test.X,test.Subject, test.Y)
  ## merge data
  myData <- rbind(train,test)
  rm(train,test) 
  ## 3. Uses descriptive activity names to name the activities in the data set 
  activityNames <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
  dirtyHack <- function(i){
    activityNames[i]
  }
  ## 4. Appropriately labels the data set with descriptive variable names. 
  ## add column names 
  colnames(myData) <- c("subject",myHeaders,"activity")
  ## 3.1 - use dirtyHack 
  myData$activity = dirtyHack(myData$activity)
  
  
  ## 6. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
  sql <-  "select subject, activity "
  for( v in myHeaders) {
    ## add sufix "_avg" for every agregeted variable name
    sql <- paste(sql,", avg(", v, ") as ",v,"_avg", sep="")
  }
  sql <- paste(sql,"from myData group by subject, activity")
  ## 
  myTidy <- sqldf(sql)  

