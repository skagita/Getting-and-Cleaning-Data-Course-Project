##=====Getting and Cleaning Data Course Project =====##
## Scrit Name : run_analysis.R
## Author: Sudheera Kagita ; Date : 03/22/2015
## Purpose: To collect,analyze and clean a dataset

## Include "plyr" package to use 'arrange()' method.
library(plyr)

## Read all the 561 measurements from the 'feautures' file
features <- read.table("./UCI HAR Dataset/features.txt",col.names = c("SNo","Name"))

## Add a new column, 'includeFlag'  to 'features' dataset. This column is used to identify rows containing
## mean and standard deviation measurements. 
features$includeFlag <- ifelse(grepl("mean\\(\\)|std\\(\\)" ,features$Name) == TRUE,"numeric","NULL")
cnames <- as.character(features$Name) ## cnames is a vector containing names of all 561 measurements
col_class <- as.character(features$includeFlag) ## col_class is a vector used to extract only mean and std measurements

## Read the test files and create dataframes
## extract only the mean and std columns while reading the training set using 'colClasses'. NULL allows to skip columns.
mtest <- read.table("./UCI HAR Dataset/test/X_test.txt",col.names = cnames,colClasses = col_class)
act_test <- read.table("./UCI HAR Dataset/test/Y_test.txt",col.names = c("activityID"))
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt",col.names = c("subjectID"))

## Read the train files and create dataframes
mtrain <- read.table("./UCI HAR Dataset/train/X_train.txt",col.names = cnames,colClasses = col_class)
act_train <- read.table("./UCI HAR Dataset/train/Y_train.txt",col.names = c("activityID"))
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt",col.names = c("subjectID"))

## Bind subject data, activity data and measurements data.
testdata <- cbind(subject_test,act_test,mtest)
traindata <- cbind(subject_train,act_train,mtrain)

## Merge training and test datasets
complete_dataset <- rbind(traindata,testdata)

## Add activity labels to name the activities in the data set
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt",col.names = c("ID","activityName"))
complete_labeled_dataset <- merge(complete_dataset,activity_labels,by.x="activityID",by.y="ID",all.x=TRUE,sort=0)

## Reorder the columns to bring the 'activityName' column to front
complete_labeled_dataset <- complete_labeled_dataset[,c(2,1,69,3:68)]
## Arrange the dataset sorted by subjectID and then by activityID
complete_labeled_dataset <- arrange(complete_labeled_dataset,subjectID,activityID)

## create an independent tidy dataset that aggregates the measurements/variables(columns 4 to 69) 
## group by 'activityName' and 'subjectID'
tidydataset <- aggregate(complete_labeled_dataset[c(4:69)],by = complete_labeled_dataset[c("activityName","subjectID")], FUN=mean)

## Load the tidy dataset into a text file 
write.table(tidydataset,file="./tidydata.txt",row.name=FALSE)





