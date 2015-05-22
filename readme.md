Readme file for run_analysis.R
==============================

Code Description
----------------

install packages: data.table, dplyr

The run_analysis.R script reads the various files that are part of the 
UCI HAR Dataset. The Dataset folder must be in the current working directory.
The aforementioned script reads the various files and

1. Merges the test and training data into a single dataset
2. Extracts the mean and standard deviation measurements
3. Uses descriptive activity names
4. labels the variables(columns) of the dataset with appropriate names

Specifically, the more detailed steps followed are:

1. Load required R libraries
2. Setup variables to store the folder and file names to ease data loading
3. Load in the data from the test data folder
4. Load in the data from the training data folder
5. Load the files containing the feature and activity labels
6. Using the feature labels, name the columns in the feature tables (x_test)
7. Name the column in the subject_test table (subject_id)
8. Name the column in the y_test table (activity_id)
9. Glue/bind the test data (left-to-right)
10. Glue/bind the training data (left-to-right)
11. Glue/bind the test and training data (top/bottom)
12. Determine which columns/measurements to keep (mean and std)
13. Extract the kept columns from the large data table
14. Merge/Join the activity_name data into the kept data table
15. Rearrange the columns for clarity, "key/id" columns on the left.
16. Relabel the measurement columns for ease of use with dplyr, tidyr, etc.



Rationale
---------

A relatively _wide_ format was chosen for this dataset to keep each 
_subject-activity-attempt_ on a single row. (It is possible to _factor_
out the 66 measurement columns so that there would be a single measurement 
column and an additional _key_ column - measurement-name) The wide vs. 
narrow decision can be made depending on what analysis is desired.

Variable Description
--------------------

There are 69 variables in the dataset. 

The first three columns are the "key" columns providing the 
subject_id, activity_id, and activity_name. 

activity_id and activity_name are a one-to-one lookup and would be considered 
redundant. Both are included to facilitate further analysis.

The next 33 columns are the "mean" measurements. 

The last 33 columns are the "std" (standard deviation) measurements.

### Specifically, in order, the variables (columns) in the dataset are:

subject_id  
activity_id  
activity_name  
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
