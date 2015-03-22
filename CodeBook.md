---
title: "Getting and Cleaning Data Course Project"
author: "Sudheera"
date: "March 22, 2015"
---

##Project Description
The purpose of this project is to demonstrate our ability to collect, work with, and clean a data set.
The goal is to prepare tidy data that can be used for later analysis.The data used in this project
is collected from the accelerometers from the Samsung Galaxy S smartphone.




### Description of the variables in the tidydata.txt file

-Dimensions of the dataset : 180*68

-Summary of the data : This is a wide form of the tidydataset

#### Variables present in the dataset

Variable Position : 1

Variable Name : activityName

Description : Name of the Activity performed by the subject

Class : Factor w/ 6 levels 

Levels : "LAYING","SITTING","STANDING","WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS"

Unit of measurement : None

Variable Position : 2

Variable Name : subjectID

Description : Identifies the subject who performed the activity for each window sample

Class : integer 

Range : 1 - 30

Unit of measurement : None

Variable Position : 3 to 68

Variable Name :  given below

Description : Average of each measurement for each activity and each subject.

Class : number 


3	tBodyAcc.mean...X				
4	tBodyAcc.mean...Y				
5	tBodyAcc.mean...Z				
6	tBodyAcc.std...X				
7	tBodyAcc.std...Y				
8	tBodyAcc.std...Z				
9	tGravityAcc.mean...X				
10	tGravityAcc.mean...Y				
11	tGravityAcc.mean...Z				
12	tGravityAcc.std...X				
13	tGravityAcc.std...Y				
14	tGravityAcc.std...Z				
15	tBodyAccJerk.mean...X				
16	tBodyAccJerk.mean...Y				
17	tBodyAccJerk.mean...Z				
18	tBodyAccJerk.std...X				
19	tBodyAccJerk.std...Y				
20	tBodyAccJerk.std...Z				
21	tBodyGyro.mean...X				
22	tBodyGyro.mean...Y				
23	tBodyGyro.mean...Z				
24	tBodyGyro.std...X				
25	tBodyGyro.std...Y				
26	tBodyGyro.std...Z				
27	tBodyGyroJerk.mean...X				
28	tBodyGyroJerk.mean...Y				
29	tBodyGyroJerk.mean...Z				
30	tBodyGyroJerk.std...X				
31	tBodyGyroJerk.std...Y				
32	tBodyGyroJerk.std...Z				
33	tBodyAccMag.mean..				
34	tBodyAccMag.std..				
35	tGravityAccMag.mean..				
36	tGravityAccMag.std..				
37	tBodyAccJerkMag.mean..				
38	tBodyAccJerkMag.std..				
39	tBodyGyroMag.mean..				
40	tBodyGyroMag.std..				
41	tBodyGyroJerkMag.mean..				
42	tBodyGyroJerkMag.std..				
43	fBodyAcc.mean...X				
44	fBodyAcc.mean...Y				
45	fBodyAcc.mean...Z				
46	fBodyAcc.std...X				
47	fBodyAcc.std...Y				
48	fBodyAcc.std...Z				
49	fBodyAccJerk.mean...X				
50	fBodyAccJerk.mean...Y				
51	fBodyAccJerk.mean...Z				
52	fBodyAccJerk.std...X				
53	fBodyAccJerk.std...Y				
54	fBodyAccJerk.std...Z				
55	fBodyGyro.mean...X				
56	fBodyGyro.mean...Y				
57	fBodyGyro.mean...Z				
58	fBodyGyro.std...X				
59	fBodyGyro.std...Y				
60	fBodyGyro.std...Z				
61	fBodyAccMag.mean..				
62	fBodyAccMag.std..				
63	fBodyBodyAccJerkMag.mean..				
64	fBodyBodyAccJerkMag.std..				
65	fBodyBodyGyroMag.mean..				
66	fBodyBodyGyroMag.std..				
67	fBodyBodyGyroJerkMag.mean..				
68	fBodyBodyGyroJerkMag.std..				
