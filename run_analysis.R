# Data Science Project

# Merges the training and test sets to create one data set

#'train/X_train.txt': Training set.
#'test/X_test.txt': Test set.

library(dplyr)
library(data.table)
library(tidyr)

# Loading the data Only here, then this can be commented
#path<-"C:/Users/sananand/Documents/data/"
#setwd(path)
#if(!file.exists("./project")){dir.create("./project")}
#fileurl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#download.file(fileurl, destfile = "./project/UCIHARDataset.zip")

#unzip

#unzip(zipfile = "./project/UCIHARDataset.zip", exdir = "./project")

# Reading the files and creating data tables

pathNew<-"C:/Users/sananand/Documents/data/project/UCI HAR Dataset"

#Get the data into a Data Frame

# Training data
#Subject
subjectTrain<-tbl_df(read.table(file.path(pathNew, "train", "subject_train.txt")))
#Feature
XTrain<-tbl_df(read.table(file.path(pathNew, "train", "X_train.txt")))
#Activity
YTrain<-tbl_df(read.table(file.path(pathNew, "train", "y_train.txt")))


# Test data
#Subject
subjectTest<-tbl_df(read.table(file.path(pathNew, "test", "subject_test.txt")))
#Feature
XTest<-tbl_df(read.table(file.path(pathNew, "test", "X_test.txt")))
#Activity
YTest<-tbl_df(read.table(file.path(pathNew, "test", "y_test.txt")))

#1. Merges the training and the test sets to create one data set

# Join All the tables
# Concatenate All Data by Rows
dataSubject <- rbind(subjectTrain,subjectTest)
dataActivity <- rbind(YTrain,YTest)
dataFeature <- rbind(XTrain,XTest)

# Names
names(dataSubject)<-c("subject")
names(dataActivity)<-c("activity")
dataFeatureNames <- read.table(file.path(pathNew, "features.txt"), head = FALSE)
names(dataFeature) <- dataFeatureNames$V2

# FinalData is the final data after all combining
Combinedata <- cbind(dataSubject,dataActivity)
FinalData <- cbind(dataFeature,Combinedata)

#2. Extracts only the measurements on the mean and standard deviation for each measurement.

# Get the coumns headers found which are having mean() and std() in them, using regex
subFeatureNameList <- dataFeatureNames$V2[grep("mean\\(\\)|std\\(\\)", dataFeatureNames$V2)]
namesSel <- c(as.character(subFeatureNameList), "subject", "activity" )
FinalData <- subset(FinalData, select=namesSel)

#3. Uses descriptive activity names to name the activities in the data set

###-- Get the data from activity_labels.txt
activityLabels <- read.table(file.path(pathNew, "activity_labels.txt"), header = FALSE)
#FinalData <- mutate(FinalData, activity = activityLabels$V1[activity])

###-- factorize Variable 'activity'
FinalData$activity<-factor(FinalData$activity);
FinalData$activity<-factor(FinalData$activity, labels = as.character(activityLabels$V2))

#4.Appropriately labels the data set with descriptive variable names.

#-- To change the feature names to more descriptive

#- prefix t  is replaced by  time
#- Acc is replaced by Accelerometer
#- Gyro is replaced by Gyroscope
#- prefix f is replaced by frequency
#- Mag is replaced by Magnitude
#- BodyBody is replaced by Body

names(FinalData)<-gsub("^t", "time", names(FinalData))
names(FinalData)<-gsub("^f", "frequency", names(FinalData))
names(FinalData)<-gsub("Acc", "Accelerometer", names(FinalData))
names(FinalData)<-gsub("Gyro", "Gyroscope", names(FinalData))
names(FinalData)<-gsub("Mag", "Magnitude", names(FinalData))
names(FinalData)<-gsub("BodyBody", "Body", names(FinalData))

#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(plyr)
FinalData_new<-aggregate(. ~subject + activity, FinalData, mean)
FinalData_new<-FinalData_new[order(FinalData_new$subject,FinalData_new$activity),]
write.table(FinalData_new, file = "tidydata.txt",row.name=FALSE)








