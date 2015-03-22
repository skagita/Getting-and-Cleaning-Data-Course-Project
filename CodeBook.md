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

3  	Avg of tBodyAcc.mean.X

4 	Avg of tBodyAcc.mean.Y

5	  Avg of tBodyAcc.mean.Z

6	  Avg of tBodyAcc.std.X

7	  Avg of tBodyAcc.std.Y

8	  Avg of tBodyAcc.std.Z

9	Avg of tGravityAcc.mean.X

10	Avg of tGravityAcc.mean.Y

11	Avg of tGravityAcc.mean.Z

12	Avg of tGravityAcc.std.X

13	Avg of tGravityAcc.std.Y

14	Avg of tGravityAcc.std.Z

15	Avg of tBodyAccJerk.mean.X

16	Avg of tBodyAccJerk.mean.Y

17	Avg of tBodyAccJerk.mean.Z

18	Avg of tBodyAccJerk.std.X

19	Avg of tBodyAccJerk.std.Y

20	Avg of tBodyAccJerk.std.Z

21	Avg of tBodyGyro.mean.X

22	Avg of tBodyGyro.mean.Y

23	Avg of tBodyGyro.mean.Z

24	Avg of tBodyGyro.std.X

25	Avg of tBodyGyro.std.Y

26	Avg of tBodyGyro.std.Z

27	Avg of tBodyGyroJerk.mean.X

28	Avg of tBodyGyroJerk.mean.Y

29	Avg of tBodyGyroJerk.mean.Z

30	Avg of tBodyGyroJerk.std.X

31	Avg of tBodyGyroJerk.std.Y

32	Avg of tBodyGyroJerk.std.Z

33	Avg of tBodyAccMag.mean.

34	Avg of tBodyAccMag.std.

35	Avg of tGravityAccMag.mean.

36	Avg of tGravityAccMag.std.

37	Avg of tBodyAccJerkMag.mean.

38	Avg of tBodyAccJerkMag.std.

39	Avg of tBodyGyroMag.mean.

40	tAvg of BodyGyroMag.std.

41	Avg of tBodyGyroJerkMag.mean.

42	Avg of tBodyGyroJerkMag.std.

43	Avg of fBodyAcc.mean.X

44	Avg of fBodyAcc.mean.Y

45	Avg of fBodyAcc.mean.Z

46	Avg of fBodyAcc.std.X

47	Avg of fBodyAcc.std.Y

48	Avg of fBodyAcc.std.Z

49	Avg of fBodyAccJerk.mean.X

50	Avg of fBodyAccJerk.mean.Y

51	Avg of fBodyAccJerk.mean.Z

52	Avg of fBodyAccJerk.std.X

53	Avg of fBodyAccJerk.std.Y

54	Avg of fBodyAccJerk.std.Z

55	Avg of fBodyGyro.mean.X

56	Avg of fBodyGyro.mean.Y

57	Avg of fBodyGyro.mean.Z

58	Avg of fBodyGyro.std.X

59	Avg of fBodyGyro.std.Y

60	Avg of fBodyGyro.std.Z

61	Avg of fBodyAccMag.mean.

62	Avg of fBodyAccMag.std.

63	Avg of fBodyBodyAccJerkMag.mean.

64	Avg of fBodyBodyAccJerkMag.std.

65	Avg of fBodyBodyGyroMag.mean.

66	Avg of fBodyBodyGyroMag.std.

67	Avg of fBodyBodyGyroJerkMag.mean.

68	Avg of fBodyBodyGyroJerkMag.std.
