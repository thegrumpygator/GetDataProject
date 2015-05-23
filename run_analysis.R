# run_analysis.R that does the following.
# 
# 1) Merges the training and the test sets to create one data set. 
# 2) Extracts only the measurements on the mean and standard deviation for each 
#    measurement. 
# 3) Uses descriptive activity names to name the activities in the data set 
# 4) Appropriately labels the data set with descriptive variable names.
# 
# From the data set in step 4, creates a second, independent tidy data set with
# the average of each VARIABLE for each ACTIVITY and each SUBJECT.

## set up depentent libraries
library(data.table)
library(dplyr)

## Set up data folder locations
##
DataFolder <- "UCI HAR Dataset/"        ## EDIT THIS FOR A DIFFERENT LOCATION!!!
TestDataFolder <- paste(DataFolder, "test/", sep="")
TrainDataFolder <- paste(DataFolder, "train/", sep="")

# read in the test data
#    space-sep data, tables have no headers
#    All three tables have same num rows
#    Will likely glue them side-by-side
test.subject_test <- read.table(paste(TestDataFolder, "subject_test.txt", sep=""))
test.x_test <- read.table(paste(TestDataFolder, "x_test.txt", sep=""))
test.y_test <- read.table(paste(TestDataFolder, "y_test.txt", sep=""))

# read in the training data
#    space-sep data, tables have no headers
#    All three tables have same num rows
#    Will likely glue them side-by-side
train.subject_test <- read.table(paste(TrainDataFolder, "subject_train.txt", sep=""))
train.x_test <- read.table(paste(TrainDataFolder, "x_train.txt", sep=""))
train.y_test <- read.table(paste(TrainDataFolder, "y_train.txt", sep=""))

#read in all the lables, features, etc.
feature.labels <- read.table(paste(DataFolder, "features.txt", sep=""), stringsAsFactors=FALSE)
names(feature.labels) <- c("feature-id", "feature-name")
activity.labels <- read.table(paste(DataFolder, "activity_labels.txt", sep=""), stringsAsFactors=FALSE)
names(activity.labels) <- c("activity-id", "activity-name")

# use the feature labels to properly label the variables in x_test
names(test.x_test) <- feature.labels[,2]
names(train.x_test) <- feature.labels[,2]

#properly label subject_test (subject_id)
names(test.subject_test) <- "subject-id"
names(train.subject_test) <- "subject-id"

#properly label y_test (activity_id)
names(test.y_test) <- "activity-id"
names(train.y_test) <- "activity-id"

# merge the test data together (left to right)
# subject_id, test_id, measurements
test <- cbind(test.subject_test, test.y_test, test.x_test)

# Clean up previous parts
rm(test.subject_test)
rm(test.y_test)
rm(test.x_test)

# repeat for training data
train <- cbind(train.subject_test, train.y_test, train.x_test)

# Clean up previous parts
rm(train.subject_test)
rm(train.y_test)
rm(train.x_test)

# merge the test and training data together (glue top to bottom)
testAndTrain <- rbind(test, train)

# Clean up previous parts
rm(test)
rm(train)

# set up mean ["mean("] and standard deviation ["std("] columns to select
mean_labels <- feature.labels[grepl("mean\\(", feature.labels[,2]),]
std_labels <- feature.labels[grepl("std\\(", feature.labels[,2]),]
feature.labels <- feature.labels[,1]

# combine the key columns with the mean and std columns labels 
col_labels <- rbind("subject-id", "activity-id", mean_labels[2], std_labels[2])

# Clean up previous parts
rm(mean_labels)
rm(std_labels)

# fix the storage of this vector
col_labels <- col_labels[,1]

# use the specific columns from above to create the tidy data of mean and std
# columns only and store in new variable dt-data.
dt.data <- data.table(testAndTrain[,col_labels])

# set the key for this data.table
setkey(dt.data, "subject-id", "activity-id")

# merge the activity names into dt-data
dt.data <- merge(dt.data, activity.labels, by = "activity-id" )

# rearrange column order for clarity
dt.data <- select(dt.data, 2, 1, 69, 3:68)

# relabel the column names for ease of use
setnames(dt.data, gsub("-","_",names(dt.data)))
setnames(dt.data, gsub("\\(\\)","",names(dt.data)))

############----->>>>> FULL Tidy Data Complete! [dt.data]
##   write.table(dt.data, file = "UCIHAR-mean-std-subject-activity-attempt.txt", row.name=FALSE)

# compute the summary as requested...
dt.summary <- dt.data %>% group_by(subject_id, activity_name) %>% summarise_each(funs(mean))

#rename the columns of dt.data to ease use (get rid of underscores)
setnames(dt.data, gsub("_", "", names(dt.data)))

#recompute summary without the activityid column included.
dt.summary <- dt.data %>% group_by(subjectid, activityname) %>% summarise_each(funs(mean), -activityid)


write.table(dt.summary, file = "UCIHAR-mean-std-subject-activity-attempt-FEATUREMEANS.txt", row.name=FALSE)
print(dt.summary)
