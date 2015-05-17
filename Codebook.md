Code Book for UCI HAR Dataset
=============================

 a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md

For use with run_analysis.R
---------------------------

This file contains the descriptions of the columns/variables/measurements
in the tidy dataset created from the UCI HAR "raw" data and tidied up
via the run_analysis.R script.

Columns (Variables/Measurements)
--------------------------------




For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


For more information about this dataset contact: activityrecognition@smartlab.ws


### Rows

Each row is one attempt, for one subject, for one 
activity -- a _subject-activity-attempt_.

### "Key" columns

subject_id  
activity_id  
activity_name  

### "Mean" columns

These columns contain the *mean* of each parameter-measurement for each
_subject-activity-attempt_.

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

These columns contain the *standard deviation* of each parameter-measurement
for each  _subject-activity-attempt_.

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

External Credits
----------------

==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws


License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
