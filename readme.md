Readme file for run_analysis.R
==============================
The run_analysis.R script is designed to pre-process the UCI HAR dataset
measuring smartphone accelerometer data collected during a controlled study. 
The script reads in all the required files (currently ignornig the raw
accelerometer data) and combines them into several tidy datasets - one
of which is output to the console. The others datasets and several other
variables remain in the workspace environment.

If the user wishes the script to write to disk the tidy dataset, the user
must only uncomment the appropriate "write.table" statement. The statement 
writes the dataset as space-delimited, with headers, and no row labels. 

If the user would like to read the tidy means data file from disk, the
following statment should be run from the R console:

`dt.summary <- read.table("filename.txt", header=TRUE)`

### Repo Contents

This repo contains:
* Readme.rm - this file
* Codebook.rm - file describing the contents of the dataset
* run_analysis.R - script to read and process the raw data into a tidy dataset

### Prerequisites
The UCI HAR data must be in the working directory. It can be obtained from
`https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip`
It should then be unzipped to your working directory such that the folder `UCI HAR Dataset`
is in your working directory.

This script was developed in R v3.1.3 64-bit for MS Windows.

The following R packages must be installed (they are loaded in the script):
* data.table
* dplyr

### Code Description

The run_analysis.R script reads the various files that are part of the 
UCI HAR Dataset. As mentioned in the prerequisites, the raw Dataset folder
must be in the current working directory.

At a macro-level, the aforementioned script reads the various files and
performs the following steps:  
1.  Merges the test and training data into a single dataset
2.  Extracts the mean and standard deviation measurements
3.  Includes descriptive activity names
4.  labels the variables(columns) of the dataset with appropriate names

Specifically, the detailed steps are:  
1.  Load required R libraries
2.  Setup variables to store the folder and file names to ease data loading
3.  Load in the data from the test data folder
4.  Load in the data from the training data folder
5.  Load the files containing the feature and activity labels
6.  Using the feature labels, name the columns in the feature tables (x_test)
7.  Name the column in the subject_test table (subject_id)
8.  Name the column in the y_test table (activity_id)
9.  Glue/bind the test data (left-to-right)
10.  Glue/bind the training data (left-to-right)
11.  Glue/bind the test and training data (top/bottom)
12.  Determine which columns/measurements to keep (mean and std)
13.  Extract the kept columns from the large data table
14.  Merge/Join the activity_name data into the kept data table
15.  Rearrange the columns for clarity, "key/id" columns on the left.
16.  Relabel the measurement columns for ease of use with dplyr, tidyr, etc.
17.  Clean up several redundant intermediate variables
18.  Compute the tidy means dataset
19.  Include lines to write output files for the various tidy datasets (currently commented out).
20.  Print the tidy means dataset to the console

Rationale
---------

A relatively _wide_ format was chosen for this dataset to keep each 
_subject-activity-attempt_ on a single row. (It is possible to _factor_
out the 66 measurement columns so that there would be a single measurement 
column and an additional _key_ column - measurement-name) The wide vs. 
narrow decision can be made depending on what analysis is desired.

Variable Description
--------------------
Upon successful completion of running the script, the workspace will contain
the following variables:
* activity.labels - lookup table used to merge with the data to create activity names based on activity ID
* dt.data - tidy data.table object containing the mean and standard deviation measurements of the full test and training dataset. One row per subject-activity-attempt. One row per subject-activity.
* dt.summary - tidy data.table object containing the means of the subject-activity-attempts on a subject-activity basis.
* testAndTrain - tidy data.frame object containing the full test and training datasets with all measurements included. One row per subject-activity-attempt.
* DataFolder - character object containing the path to the raw UCI HAR data
* TestDataFolder - character object containing the path to the test data folder of the raw UCI HAR data
* TrainDataFolder - character object containing the path to the training data folder of the raw UCI HAR data
* col_labels - character vector object containing the original labels for the mean/std columns from the UCI HAR data
* feature.labels - character vector object containing the original labels for all measurements in the UCI HAR data


External Credits
----------------
Full credits to the original dataset are included in the Codebook.md, however
a subset of those credits are included here

Human Activity Recognition Using Smartphones Dataset
----
Version 1.0
----
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws


License:
----
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
