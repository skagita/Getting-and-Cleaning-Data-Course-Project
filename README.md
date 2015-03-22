# Getting-and-Cleaning-Data-Course-Project
Getting and Cleaning Data Course Project

This repo contains the R script that can be used to analyse the given UCI HAR Datasets and convert it into a tidy data set.

This was done as the course project for the "Getting and Cleaning Data" course in Coursera.

## Project Goal

Create a R script that does the following

- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement.
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names.
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## R code

The R code that is used for analysis is available in the [run_analysis.R](run_analysis.R) file.

Source the file in R using the following command and it will automatically download the dataset, perform the transformation, tidy the data and save it in the file `tidydata.txt`.

```R
source("run_analysis.R")
```

The tidy data set can be loaded back into R using the following command

```R
tidy_data <- read.table("tidydata.txt")
```

## Data CodeBook

The [codebook](CodeBook.md) available in this repo describes the variables.
