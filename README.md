# Getting-and-Cleaning-Data
This R Repository is created to accomplish the tasks for Getting and Cleaning Data Course Project
Getting and Cleaning Data Course Projectless 
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


#Step-1. Loading the data Only here, then this can be commented and then activated when required to get the raw Data

#Step-2. Reading the files and creating data tables

#Step-3. Get the data into a Data Frame

- Training data is handled 
- Test data is handled

Step-4 is divided into multiple parts as below :
- Merges the training and the test sets to create one data set
- Join All the tables
- Concatenate All Data by Rows and columns to get the FinalData Df.


#Step-5. Extracts only the measurements on the mean and standard deviation for each measurement.

-Get the coumns headers found which are having mean() and std() in them, using regex

#Step-6. Uses descriptive activity names to name the activities in the data set
- Get the data from activity_labels.txt



#Step-7. factorize Variable 'activity'
FinalData$activity<-factor(FinalData$activity);
FinalData$activity<-factor(FinalData$activity, labels = as.character(activityLabels$V2))

#Step-8.. Appropriately labels the data set with descriptive variable names.
- To change the feature names to more descriptive

- prefix t is replaced by time
- Acc is replaced by Accelerometer
- Gyro is replaced by Gyroscope
- prefix f is replaced by frequency
- Mag is replaced by Magnitude
- BodyBody is replaced by Body


#Step-9. From the data set got, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
- Get the whole Df into a tidy.txt , text file
