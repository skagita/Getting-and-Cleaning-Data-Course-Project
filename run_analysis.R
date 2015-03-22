library(plyr)
library(dplyr)

features <- read.table("./UCI HAR Dataset/features.txt",col.names = c("SNo","Name"))
features$includeFlag <- ifelse(grepl("mean\\(\\)|std\\(\\)" ,features$Name) == TRUE,1,0)
features$includeFlag <- ifelse(grepl("mean\\(\\)|std\\(\\)" ,features$Name) == TRUE,"numeric","NULL")
cnames <- as.character(features$Name)
col_class <- as.character(features$includeFlag)

mtest <- read.table("./UCI HAR Dataset/test/X_test.txt",col.names = cnames,colClasses = col_class)
mtrain <- read.table("./UCI HAR Dataset/train/X_train.txt",col.names = cnames,colClasses = col_class)

act_train <- read.table("./UCI HAR Dataset/train/Y_train.txt",col.names = c("activityID"))
act_test <- read.table("./UCI HAR Dataset/test/Y_test.txt",col.names = c("activityID"))
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt",col.names = c("subjectID"))
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt",col.names = c("subjectID"))

testdata <- cbind(subject_test,act_test,mtest)
traindata <- cbind(subject_train,act_train,mtrain)
complete_dataset <- rbind(traindata,testdata)

activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt",col.names = c("ID","activityName"))
complete_labeled_dataset <- merge(complete_dataset,activity_labels,by.x="activityID",by.y="ID",all.x=TRUE,sort=0)

complete_labeled_dataset <- complete_labeled_dataset[,c(2,1,69,3:68)]
complete_labeled_dataset <- arrange(complete_labeled_dataset,subjectID,activityID)

tidydataset <- aggregate(complete_labeled_dataset[c(4:66)],by = complete_labeled_dataset[c("activityName","subjectID")], FUN=mean)
write.table(tidydataset,file="./tidydata.txt",row.name=FALSE)


