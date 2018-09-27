# R - file for Coursera course: Getting and Cleaning Data Course 
# 
rm(list=ls())

## Directory home structures
# homepath is the home folder where all directories are located, train and test indicate the nomenclature of the directories
homepath <- "C:\\GIO\\PC\\Rprojects\\gettingandcleaningdata\\project\\project dataset\\UCI HAR Dataset"
traindata_path <- "train"
testdata_path <- "test"

## Question 1. Merge the training and the test sets to create one data set
## a) read the directory structure of train and test folders, 
## b) then go through the common files of each directory and 
## c) merge the data into a "merged" dataset and finally
## d) save the merged data in a "_merged" file under a reciprocal "merged" folder structure.

# read folder structures and warn if not reciprocal
trainDataDirs <- list.dirs(file.path(homepath, traindata_path))
testDataDirs <- list.dirs(file.path(homepath, testdata_path))
if (length(setdiff(union(gsub("train", "XXX", trainDataDirs), gsub("test", "XXX", testDataDirs)), intersect(gsub("train", "XXX", trainDataDirs), gsub("test", "XXX", testDataDirs)))>0)){
    print("warning, the directory structures are not reciprocal\n")
}

# create an expr for the path
datadirs <- gsub("train", "XXX", trainDataDirs)
# iterate over all folders
for (id in 1:length(datadirs)){
    # current reciprocal folders
    curTrainDataPath <- gsub("XXX","train", datadirs[[id]])
    curTestDataPath <- gsub("XXX","test", datadirs[[id]])
    curMergedDataPath <- gsub("XXX","merged", datadirs[[id]])
    
    # list the respective files
    trainDataFiles <- list.files(curTrainDataPath, pattern = "*.txt", include.dirs = "FALSE")
    testDataFiles <- list.files(curTestDataPath, pattern = "*.txt", include.dirs = "FALSE")
    
    # create an expr for the file names
    datanames <- intersect(gsub("_test.txt", "", testDataFiles), gsub("_train.txt", "", trainDataFiles))
    # warn if files not reciprocal
    if ((length(datanames) != length(testDataFiles)) | (length(datanames) != length(testDataFiles))){
        print("warning, the files are not reciprocal\n")
    }
    
    # iterate over all files 
    for (i in 1:length(datanames)) {
        # current reciprocal files
        curTrainDataFile <- paste0(datanames[[i]], "_train.txt")
        curTestDataFile <- paste0(datanames[[i]], "_test.txt")
        
        # load train and test files
        trainData <- read.table(file.path(curTrainDataPath, curTrainDataFile))
        testData <- read.table(file.path(curTestDataPath, curTestDataFile))
        
        ## merge the data and save
        # merge the variables
        mergedData <- rbind(trainData, testData)
        
        # create a reciprocal folder
        dir.create(curMergedDataPath, showWarnings = FALSE)
        # save the data in a file named accordingly
        mergedfile <- file(file.path(curMergedDataPath, paste0(datanames[[i]], "_merged.txt")))
        write.table(mergedData, mergedfile)
    }
}

## Question 2. Extract only the measurements on the mean and standard deviation for each measurement
## -  apply the extraction to the X_merged.txt dataset, since it contains the measurements
## a) load the merged dataset and the features
## b) filter the columns including mean or std in the features
## c) subset the X_merged dataset according to the respective columns
## d) save the subset data into a file.

# read features and activities
Xfilename <- "X_merged.txt"
x <- read.table(file.path(homepath, "merged", Xfilename))
features <- read.table(file.path(homepath, "features.txt"))

# find columns and select respective column 
filterMeanStd <- grep("-(mean|std)\\(\\)", features[,2])
X_filtered <- x[,filterMeanStd]

# Question 4. Appropriately label the data set with descriptive variable names
# for X data
names_X_filtered <- features[filterMeanStd, 2]

# create a list of all regexp and the respective elaborate description
# and apply with a loop
regexp_list <- c("^t", "^f", "Body", "Gravity", "Acc", "Jerk", "Gyro", "Mag", "\\()", "-", "mean", "std")
repl_list <- c("time domain", "frequency domain", " Body", " Gravity", " Accelerometer", " Jerk", " Gyroscope", " Magnitude", "", " ", "Mean value", "Standard deviation")

for (i in 1:length(regexp_list)){
    names_X_filtered <- gsub(regexp_list[i], repl_list[i], names_X_filtered)
}
names(X_filtered) <- names_X_filtered 

# save data into a file
filteredfile <- file(file.path(homepath, "merged", paste0("MeanStd_",Xfilename)))
write.table(X_filtered, filteredfile)

## Question 3. Use descriptive activity names to name the activities in the data set
## -  activities are included in the Y dataset.
## a) load the activity assignment table from activity_labels.txt
## b) use the table to adjust the Y dataset according to the activity assignment table

# read activities
activities <- read.table(file.path(homepath, "activity_labels.txt"))
Yfilename <- "Y_merged.txt"
y_descriptive <- read.table(file.path(homepath, "merged", Yfilename))
y_descriptive[,1] <- activities[y_descriptive[,1], 2]

## Question 4. Appropriately label the data set with descriptive variable names
## - the Y data set refers to the activities
## - the X data set refers to the measurements - has been named/labeled before, under question 2
## - the subject data set refers to the subjects 

names(y_descriptive) <- "activity"

# save data into a file
y_descriptivefile <- file(file.path(homepath, "merged", paste0("Descriptive_",Yfilename)))
write.table(y_descriptive, y_descriptivefile)

Sfilename <- "subject_merged.txt"
subjects <- read.table(file.path(homepath, "merged", Sfilename))

names(subjects) <- "subject"

# save data into a file
subjects_descriptivefile <- file(file.path(homepath, "merged", paste0("Descriptive_", Sfilename)))
write.table(subjects, subjects_descriptivefile)

## Question 5. From the data set in step 4, creates a second, independent tidy data set 
## with the average of each variable for each activity and each subject.
## a) merge all data in one set
## b) create the aggregate tidy data set by averaging over the relevant columns
## c) save the tidy data set into a file

# merge all data into one set
consolidatedData <- cbind(subjects, X_filtered, y_descriptive)

# from the merged data apply mean into each column apart from $subject and $activity
tidyDataSet <- aggregate(. ~subject + activity, consolidatedData, mean)

# save data into a file
tidyDataSetfile <- file(file.path(homepath, "merged", "tidyDataSet.txt"))
write.table(tidyDataSet, tidyDataSetfile)


