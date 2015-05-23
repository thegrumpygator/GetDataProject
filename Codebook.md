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

Tidy "Means" Dataset
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


External Credits
================
For more information about this dataset contact: activityrecognition@smartlab.ws
--------------------------------------------------------------------------------
Human Activity Recognition Using Smartphones Dataset
Version 1.0
-----
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws


License:
-----
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
