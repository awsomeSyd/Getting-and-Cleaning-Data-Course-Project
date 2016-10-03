library(dplyr)
library(reshape2)
#download and unzip the dataset 
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileUrl, "./dataset.zip")
  unzip("./dataset.zip")
#Step 1 - Merges the training and the test sets to create one data set.
  #read and merge train and test data sets 
    trainSet <- read.table("./UCI HAR Dataset/train/X_train.txt")
    testSet <- read.table("./UCI HAR Dataset/test/X_test.txt")
    mergedSet <- rbind(trainSet, testSet)
      
#Step 2 - Extracts only the measurements on the mean and standard deviation for each measurement.
  #read list of features
    features <- read.table("./UCI HAR Dataset/features.txt")
  #rename variables with descriptive variable names
    names(mergedSet) <- features[ ,2]
  #find variables for mean and standard deviation for each measurement
    meanVariables <- grep("-mean\\()", features$V2)
    stdVariables <- grep("std\\()", features$V2)
    subsetVariables <- c(meanVariables, stdVariables)    
  #extract only mean and standard deviation measurements
    mergedSet_subset <- mergedSet[ , subsetVariables]
    
#Step 3 - Uses descriptive activity names to name the activities in the data set
  #read activity labels
    activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
  #read and merge train and test activity data
    trainActivity <- read.table("./UCI HAR Dataset/train/y_train.txt")
    testActivity <- read.table("./UCI HAR Dataset/test/y_test.txt")
    mergedActivity <- rbind(trainActivity, testActivity)
  #merge descriptive activity names to activity data set
    mergedActivity_descriptive <- merge(mergedActivity, activityLabels, by.x = "V1", y.y = "V1")
  #merge descriptive activities to merged train and set data set
    mergedSet_subset <- cbind(mergedSet_subset, mergedActivity_descriptive[ ,2])  
    names(mergedSet_subset)[67] = "activityName"
    
#Step 4 - Appropriately labels the data set with descriptive variable names.
  #already done is Step 2
    
#Step 5 - From the data set in step 4, creates a second, independent tidy data set
#         with the average of each variable for each activity and each subject.
  #read and merge train and test subject data
    trainSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
    testSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
    mergedSubject <- rbind(trainSubject, testSubject)
  #merge subjects to merged train and set data set
    mergedSet_subset <- cbind(mergedSet_subset, mergedSubject)
    names(mergedSet_subset)[68] = "subjectId"
  #melt and casr data frame to calculate mean for all columns
    HARmelt <- melt(mergedSet_subset, id = c("subjectId", "activityName"))
    HAR_mean <- dcast(HARmelt, subjectId + activityName ~ variable, mean)
  #renaming the variable with proper names
    names(HAR_mean) <- sub("\\()", "", names(HAR_mean))
    names(HAR_mean) <- sub("^t", "time", names(HAR_mean))
    names(HAR_mean) <- sub("^f", "frequency", names(HAR_mean))
    names(HAR_mean) <- sub("Acc", "Acceleration", names(HAR_mean))
    names(HAR_mean) <- sub("Mag", "Magnitute", names(HAR_mean))
    names(HAR_mean) <- sub("BodyBody", "Body", names(HAR_mean))
  #write back the information into a file
    write.table(HAR_mean, file = "HAR_mean", row.names = FALSE)