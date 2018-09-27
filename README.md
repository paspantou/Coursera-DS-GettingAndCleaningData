# Coursera-DS-GettingAndCleaningData
The repository contains the files needed for the Data Science Course: Getting and cleaning data

## How to read this README file
The file contains:
1. lists the content of the repository and 
2. explains the structure of the run_analysis.R file.

# Content of the repository
### README.md
See above

### CodeBook.md
Explains the variables and the actions/modifications/transformations performed

### run_analysis.R
An analysis script in R that performs the required data cleaning

# Content of run_analysis.R
The file takes as a prerequisite that, the file [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) has been downloaded and unzipped.

### line 3:
Empty the current workspace.

### lines 7-9:
Define the folder path structure. 
homepath is the home folder where all directories are located, train and test indicate the nomenclature of the directories.

## Question 1. Merge the training and the test sets to create one data set
### lines 11-64

a) read the directory structure of train and test folders,

b) then go through the common files of each directory and 

c) merge the data into a "merged" dataset and finally

d) save the merged data in a "_merged" file under a reciprocal "merged" folder structure.

## Question 2. Extract only the measurements on the mean and standard deviation for each measurement
### lines 66-99

apply the extraction to the X_merged.txt dataset, since it contains the measurements

a) load the merged dataset and the features

b) filter the columns including mean or std in the features

c) subset the X_merged dataset according to the respective columns

d) save the subset data into a file.


## Question 3. Use descriptive activity names to name the activities in the data set
### lines 100-110
activities are included in the Y dataset.

a) load the activity assignment table from activity_labels.txt

b) use the table to adjust the Y dataset according to the activity assignment table

## Question 4. Appropriately label the data set with descriptive variable names
### lines 111-130, lines 82-99
the Y data set refers to the activities

the X data set refers to the measurements - the variable names are labeled in lines 86-99

the subject data set refers to the subjects 

## Question 5. From the data set in step 4, creates a second, independent tidy data set 
### lines 131-end
with the average of each variable for each activity and each subject.

a) merge all data in one set

b) create the aggregate tidy data set by averaging over the relevant columns

c) save the tidy data set into a file
