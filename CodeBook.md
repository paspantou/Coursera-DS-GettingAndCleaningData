# Getting and Cleaning Data
## Coursera

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

### How to read this CodeBook
This CodeBook explains the content of the Tidy data set in this repository. The content is based on the README.txt file and the features_info.txt in the data set.

### Description of data set
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

### Variables contained in the data set in this repository
#### [1] "subject": 
Identifier of the subject who carried out the experiment.

#### [2] "activity": 
Type of activity performed by the subject.

#### [3-68] measurements - _a complete list of the variables is provided at the end of this description_: 
66 variables of the average (mean value) of the time domain and frequency domain mean values and standard deviation values of the measurements of the accelerometer and the gyroscope in triaxial directions. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

##### list of the measurement variables
 [3] "time domain Body Accelerometer Mean value X"
 
 [4] "time domain Body Accelerometer Mean value Y"                               
 
 [5] "time domain Body Accelerometer Mean value Z"                               
 
 [6] "time domain Body Accelerometer Standard deviation X"                       
 
 [7] "time domain Body Accelerometer Standard deviation Y"                       
 
 [8] "time domain Body Accelerometer Standard deviation Z"                       
 
 [9] "time domain Gravity Accelerometer Mean value X"                            

[10] "time domain Gravity Accelerometer Mean value Y"                            

[11] "time domain Gravity Accelerometer Mean value Z"                            

[12] "time domain Gravity Accelerometer Standard deviation X"                    

[13] "time domain Gravity Accelerometer Standard deviation Y"                    

[14] "time domain Gravity Accelerometer Standard deviation Z"                    

[15] "time domain Body Accelerometer Jerk Mean value X"                          

[16] "time domain Body Accelerometer Jerk Mean value Y"                          

[17] "time domain Body Accelerometer Jerk Mean value Z"                          

[18] "time domain Body Accelerometer Jerk Standard deviation X"                  

[19] "time domain Body Accelerometer Jerk Standard deviation Y"                  

[20] "time domain Body Accelerometer Jerk Standard deviation Z"                  

[21] "time domain Body Gyroscope Mean value X"                                   

[22] "time domain Body Gyroscope Mean value Y"                                   

[23] "time domain Body Gyroscope Mean value Z"                                   

[24] "time domain Body Gyroscope Standard deviation X"                           

[25] "time domain Body Gyroscope Standard deviation Y"                           

[26] "time domain Body Gyroscope Standard deviation Z"                           

[27] "time domain Body Gyroscope Jerk Mean value X"                              

[28] "time domain Body Gyroscope Jerk Mean value Y"                              

[29] "time domain Body Gyroscope Jerk Mean value Z"                              

[30] "time domain Body Gyroscope Jerk Standard deviation X"                      

[31] "time domain Body Gyroscope Jerk Standard deviation Y"                      

[32] "time domain Body Gyroscope Jerk Standard deviation Z"                      

[33] "time domain Body Accelerometer Magnitude Mean value"                       

[34] "time domain Body Accelerometer Magnitude Standard deviation"               

[35] "time domain Gravity Accelerometer Magnitude Mean value"                    

[36] "time domain Gravity Accelerometer Magnitude Standard deviation"            

[37] "time domain Body Accelerometer Jerk Magnitude Mean value"                  

[38] "time domain Body Accelerometer Jerk Magnitude Standard deviation"          

[39] "time domain Body Gyroscope Magnitude Mean value"                           

[40] "time domain Body Gyroscope Magnitude Standard deviation"                   

[41] "time domain Body Gyroscope Jerk Magnitude Mean value"                      

[42] "time domain Body Gyroscope Jerk Magnitude Standard deviation"              

[43] "frequency domain Body Accelerometer Mean value X"                          

[44] "frequency domain Body Accelerometer Mean value Y"                          

[45] "frequency domain Body Accelerometer Mean value Z"                          

[46] "frequency domain Body Accelerometer Standard deviation X"                  

[47] "frequency domain Body Accelerometer Standard deviation Y"                  

[48] "frequency domain Body Accelerometer Standard deviation Z"                  

[49] "frequency domain Body Accelerometer Jerk Mean value X"                     

[50] "frequency domain Body Accelerometer Jerk Mean value Y"                     

[51] "frequency domain Body Accelerometer Jerk Mean value Z"                     

[52] "frequency domain Body Accelerometer Jerk Standard deviation X"             

[53] "frequency domain Body Accelerometer Jerk Standard deviation Y"             

[54] "frequency domain Body Accelerometer Jerk Standard deviation Z"             

[55] "frequency domain Body Gyroscope Mean value X"                              

[56] "frequency domain Body Gyroscope Mean value Y"                              

[57] "frequency domain Body Gyroscope Mean value Z"                              

[58] "frequency domain Body Gyroscope Standard deviation X"                      

[59] "frequency domain Body Gyroscope Standard deviation Y"                      

[60] "frequency domain Body Gyroscope Standard deviation Z"                      

[61] "frequency domain Body Accelerometer Magnitude Mean value"                  

[62] "frequency domain Body Accelerometer Magnitude Standard deviation"          

[63] "frequency domain Body Body Accelerometer Jerk Magnitude Mean value"        

[64] "frequency domain Body Body Accelerometer Jerk Magnitude Standard deviation"

[65] "frequency domain Body Body Gyroscope Magnitude Mean value"                 

[66] "frequency domain Body Body Gyroscope Magnitude Standard deviation"         

[67] "frequency domain Body Body Gyroscope Jerk Magnitude Mean value"            

[68] "frequency domain Body Body Gyroscope Jerk Magnitude Standard deviation"
