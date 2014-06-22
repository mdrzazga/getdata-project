MyTidy data set
---------------
Based on Human Activity Recognition Using Smartphones Data Set 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Merges the training and the test sets and extracts only the measurements on the mean and standard deviation for each measurement. 
Creates a independent tidy data set with the average of each variable for each activity and each subject. 

We kept the names and significance of the original data. For details, refer to the document features_info.txt contained in the original data set. Extract form oryginal  features_info.txt:

" The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
...
"

We use descriptive activity names to name the activities in the data set according to oryginal activity labels.
In new data set we added sufix "_avg" for every agregeted variable name.

Automatic procedure for preparation of the described set is contained in the script R run_analysis.R (details in the comments). 
Instructions on how to obtain a set of original data is located in the file README.md.


List of variables:

  1. subject
  2. activity
  3. tBodyAcc_mean_X_avg
  4. tBodyAcc_mean_Y_avg
  5. tBodyAcc_mean_Z_avg
  6. tBodyAcc_std_X_avg
  7. tBodyAcc_std_Y_avg
  8. tBodyAcc_std_Z_avg
  9. tGravityAcc_mean_X_avg
  10. tGravityAcc_mean_Y_avg
  11. tGravityAcc_mean_Z_avg
  12. tGravityAcc_std_X_avg
  13. tGravityAcc_std_Y_avg
  14. tGravityAcc_std_Z_avg
  15. tBodyAccJerk_mean_X_avg
  16. tBodyAccJerk_mean_Y_avg
  17. tBodyAccJerk_mean_Z_avg
  18. tBodyAccJerk_std_X_avg
  19. tBodyAccJerk_std_Y_avg
  20. tBodyAccJerk_std_Z_avg
  21. tBodyGyro_mean_X_avg
  22. tBodyGyro_mean_Y_avg
  23. tBodyGyro_mean_Z_avg
  24. tBodyGyro_std_X_avg
  25. tBodyGyro_std_Y_avg
  26. tBodyGyro_std_Z_avg
  27. tBodyGyroJerk_mean_X_avg
  28. tBodyGyroJerk_mean_Y_avg
  29. tBodyGyroJerk_mean_Z_avg
  30. tBodyGyroJerk_std_X_avg
  31. tBodyGyroJerk_std_Y_avg
  32. tBodyGyroJerk_std_Z_avg
  33. tBodyAccMag_mean_avg
  34. tBodyAccMag_std_avg
  35. tGravityAccMag_mean_avg
  36. tGravityAccMag_std_avg
  37. tBodyAccJerkMag_mean_avg
  38. tBodyAccJerkMag_std_avg
  39. tBodyGyroMag_mean_avg
  40. tBodyGyroMag_std_avg
  41. tBodyGyroJerkMag_mean_avg
  42. tBodyGyroJerkMag_std_avg
  43. fBodyAcc_mean_X_avg
  44. fBodyAcc_mean_Y_avg
  45. fBodyAcc_mean_Z_avg
  46. fBodyAcc_std_X_avg
  47. fBodyAcc_std_Y_avg
  48. fBodyAcc_std_Z_avg
  49. fBodyAccJerk_mean_X_avg
  50. fBodyAccJerk_mean_Y_avg
  51. fBodyAccJerk_mean_Z_avg
  52. fBodyAccJerk_std_X_avg
  53. fBodyAccJerk_std_Y_avg
  54. fBodyAccJerk_std_Z_avg
  55. fBodyGyro_mean_X_avg
  56. fBodyGyro_mean_Y_avg
  57. fBodyGyro_mean_Z_avg
  58. fBodyGyro_std_X_avg
  59. fBodyGyro_std_Y_avg
  60. fBodyGyro_std_Z_avg
  61. fBodyAccMag_mean_avg
  62. fBodyAccMag_std_avg
  63. fBodyBodyAccJerkMag_mean_avg
  64. fBodyBodyAccJerkMag_std_avg
  65. fBodyBodyGyroMag_mean_avg
  66. fBodyBodyGyroMag_std_avg
  67. fBodyBodyGyroJerkMag_mean_avg
  68. fBodyBodyGyroJerkMag_std_avg
