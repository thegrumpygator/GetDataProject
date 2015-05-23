Code Book for UCI HAR Dataset
=============================
Specifically, this is the codebook for the tidy means of the mean and standard 
deviation for each subject/activity/attempt. This codebook describes the 
variables, data, and transformations performed to clean the data.

For use with run_analysis.R
---------------------------

This file contains the descriptions of the columns/variables/measurements
in the tidy dataset created from the UCI HAR "raw" data and tidied up
via the run_analysis.R script. run_analysis.R will "print" the means
dataset to the console when run is complete. 

Several other variables will remain in the workspace environment. They are also
documented here.

Tidy "Means" Dataset (data.table)
====================

For each record it is provided:
-------------------------------

- An identifier of the subject who carried out the experiment.
- Its activity label. 
- Subject-Activity-Mean Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Subject-Activity-Mean Triaxial Angular velocity from the gyroscope. 

### Rows

Each row is a summary (mean) for one attempt, for one subject, for one 
activity - a _subject-activity-attempt_.

### "Key" columns

* subjectid  
* activityname  

### "Measurement/Variable" columns

These columns contain the *means* of each parameter-measurement for each
_subject-activity-attempt_. The column labels correspond to the same labels 
from the original "raw" data, however, parentheses, dashes, underscores have
all been removed to allow easier use of R libraries such as "tidyr" and "dplyr"

The 66 measurements included in this tidy dataset are a subset of the original
561 measurements from the original "raw" data chosen such as to only include
measurement columns with "mean()" and "std()" in their original label - the
columns containing the mean and standard deviations of the measurements.

* tBodyAccmeanX  
* tBodyAccmeanY  
* tBodyAccmeanZ  
* tGravityAccmeanX  
* tGravityAccmeanY  
* tGravityAccmeanZ  
* tBodyAccJerkmeanX  
* tBodyAccJerkmeanY  
* tBodyAccJerkmeanZ  
* tBodyGyromeanX  
* tBodyGyromeanY  
* tBodyGyromeanZ  
* tBodyGyroJerkmeanX  
* tBodyGyroJerkmeanY  
* tBodyGyroJerkmeanZ  
* tBodyAccMagmean  
* tGravityAccMagmean  
* tBodyAccJerkMagmean  
* tBodyGyroMagmean  
* tBodyGyroJerkMagmean  
* fBodyAccmeanX  
* fBodyAccmeanY  
* fBodyAccmeanZ  
* fBodyAccJerkmeanX  
* fBodyAccJerkmeanY  
* fBodyAccJerkmeanZ  
* fBodyGyromeanX  
* fBodyGyromeanY  
* fBodyGyromeanZ  
* fBodyAccMagmean  
* fBodyBodyAccJerkMagmean  
* fBodyBodyGyroMagmean  
* fBodyBodyGyroJerkMagmean  
* tBodyAccstdX  
* tBodyAccstdY  
* tBodyAccstdZ  
* tGravityAccstdX  
* tGravityAccstdY  
* tGravityAccstdZ  
* tBodyAccJerkstdX  
* tBodyAccJerkstdY  
* tBodyAccJerkstdZ  
* tBodyGyrostdX  
* tBodyGyrostdY  
* tBodyGyrostdZ  
* tBodyGyroJerkstdX  
* tBodyGyroJerkstdY  
* tBodyGyroJerkstdZ  
* tBodyAccMagstd  
* tGravityAccMagstd  
* tBodyAccJerkMagstd  
* tBodyGyroMagstd  
* tBodyGyroJerkMagstd  
* fBodyAccstdX  
* fBodyAccstdY  
* fBodyAccstdZ  
* fBodyAccJerkstdX  
* fBodyAccJerkstdY  
* fBodyAccJerkstdZ  
* fBodyGyrostdX  
* fBodyGyrostdY  
* fBodyGyrostdZ  
* fBodyAccMagstd  
* fBodyBodyAccJerkMagstd  
* fBodyBodyGyroMagstd  
* fBodyBodyGyroJerkMagstd  

Tidy TestAndTrain Dataset
====
_data.table_ named "testAndTrain" containing the combination of the test
dataset and the training dataset

Tidy Mean and Standard Deviation Subset Dataset
====
_data.table_ named "dt.data" containing only the columns from the 
testAndTrain dataset 

Activity Labels
====
lookup table (data.frame) named "activity.labels" containing the 
activity ID number and the corresponding activity label for the 
six activities from the study.

Other Variables
====
* DataFolder - path from the current working directory (cwd) to the original "raw" data
* TestDataFolder - path from the _cwd_ to the test data folder
* TrainDataFolder - path from the _cwd_ to the training data folder
* col_labels - vector containing the original names of the columns subsetted for inclusion
* feature.labels - full set of features from the original "raw" data

External Credits
================
The above tidy dataset and other included variables and datasets are
all based on and read from the original "raw" UCI HAR dataset located in the 
working directory folder "/UCI HAR Dataset". It's credits and references are 
included below verbatim.

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
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
