Code Book for UCI HAR Dataset
=============================

For use with run_analysis.R
---------------------------

This file contains the descriptions of the columns/variables/measurements
in the tidy dataset created from the UCI HAR "raw" data and tidied up
via the run_analysis.R script.

Columns (Variables/Measurements)
--------------------------------

### "Key" columns
subject_id  
activity_id  
activity_name  

### Rows
Each row is one attempt, for one subject, for one 
activity -- a _subject-activity-attempt_.

### "Mean" columns

These columns contain the *mean* of each _subject-activity-attempt_.

tBodyAcc_mean_X  
tBodyAcc_mean_Y  
tBodyAcc_mean_Z  
tGravityAcc_mean_X  
tGravityAcc_mean_Y  
tGravityAcc_mean_Z  
tBodyAccJerk_mean_X  
tBodyAccJerk_mean_Y  
tBodyAccJerk_mean_Z  
tBodyGyro_mean_X  
tBodyGyro_mean_Y  
tBodyGyro_mean_Z  
tBodyGyroJerk_mean_X  
tBodyGyroJerk_mean_Y  
tBodyGyroJerk_mean_Z  
tBodyAccMag_mean  
tGravityAccMag_mean  
tBodyAccJerkMag_mean  
tBodyGyroMag_mean  
tBodyGyroJerkMag_mean  
fBodyAcc_mean_X  
fBodyAcc_mean_Y  
fBodyAcc_mean_Z  
fBodyAccJerk_mean_X  
fBodyAccJerk_mean_Y  
fBodyAccJerk_mean_Z  
fBodyGyro_mean_X  
fBodyGyro_mean_Y  
fBodyGyro_mean_Z  
fBodyAccMag_mean  
fBodyBodyAccJerkMag_mean  
fBodyBodyGyroMag_mean  
fBodyBodyGyroJerkMag_mean  

### "std" columns

These columns contain the *standard deviation* of each _subject-activity-attempt_.

tBodyAcc_std_X  
tBodyAcc_std_Y  
tBodyAcc_std_Z  
tGravityAcc_std_X  
tGravityAcc_std_Y  
tGravityAcc_std_Z  
tBodyAccJerk_std_X  
tBodyAccJerk_std_Y  
tBodyAccJerk_std_Z  
tBodyGyro_std_X  
tBodyGyro_std_Y  
tBodyGyro_std_Z  
tBodyGyroJerk_std_X  
tBodyGyroJerk_std_Y  
tBodyGyroJerk_std_Z  
tBodyAccMag_std  
tGravityAccMag_std  
tBodyAccJerkMag_std  
tBodyGyroMag_std  
tBodyGyroJerkMag_std  
fBodyAcc_std_X  
fBodyAcc_std_Y  
fBodyAcc_std_Z  
fBodyAccJerk_std_X  
fBodyAccJerk_std_Y  
fBodyAccJerk_std_Z  
fBodyGyro_std_X  
fBodyGyro_std_Y  
fBodyGyro_std_Z  
fBodyAccMag_std  
fBodyBodyAccJerkMag_std  
fBodyBodyGyroMag_std  
fBodyBodyGyroJerkMag_std  