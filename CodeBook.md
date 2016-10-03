#Code Book
##Input files:
- features.txt: List of all features
- activity_labels.txt: Links the class labels with their activity name.
- train/X_train.txt: Training set.
- train/y_train.txt: Training labels.
- test/X_test.txt: Test set.
- test/y_test.txt: Test labels.
- train/subject_train.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- test/subject_test.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

##Used datasets in .R script:
- mergedSet : contains Train and Test dataset 
- meanVariable, stdVariables and subsetVariables: datasets to subset only mean and standard deviation related variables
- mergedSet_subset: a subset from mergedSet that only contains mean and standard deviation variables
- mergedActivity: merged data set containing both train and test activity labels
- mergedSubject : merged data set containing both train and test subjects ID
- HARmelt : melted form of mergedSet_subset
- HAR_mean : casted form of HARmelt, grouped by subject ID and Activity Labels.

##Output File:
- HAR_mean.txt: this file contain final tidy dataset, which is the outpu of run_analysis.R script.

##Variable List:
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAcceleration-XYZ and timeGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAcceleration-XYZ and timeGravityAcceleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerationJerk-XYZ and timeBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerationMagnitude, timeGravityAccelerationMagnitude, timeBodyAccelerationJerkMagnitude, timeBodyGyroMagnitude, timeBodyGyroJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAcceleration-XYZ, frequencyBodyAccJerk-XYZ, frequencyBodyGyro-XYZ, frequencyBodyAccJerkMag, frequencyBodyGyroMag, frequenctBodyGyroJerkMag.

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

 [1] "subjectId"                                  
 [2] "activityName"                               
 [3] "timeBodyAcceleration-mean-X"                
 [4] "timeBodyAcceleration-mean-Y"                
 [5] "timeBodyAcceleration-mean-Z"                
 [6] "timeGravityAcceleration-mean-X"             
 [7] "timeGravityAcceleration-mean-Y"             
 [8] "timeGravityAcceleration-mean-Z"             
 [9] "timeBodyAccelerationJerk-mean-X"            
[10] "timeBodyAccelerationJerk-mean-Y"            
[11] "timeBodyAccelerationJerk-mean-Z"            
[12] "timeBodyGyro-mean-X"                        
[13] "timeBodyGyro-mean-Y"                        
[14] "timeBodyGyro-mean-Z"                        
[15] "timeBodyGyroJerk-mean-X"                    
[16] "timeBodyGyroJerk-mean-Y"                    
[17] "timeBodyGyroJerk-mean-Z"                    
[18] "timeBodyAccelerationMagnitute-mean"         
[19] "timeGravityAccelerationMagnitute-mean"      
[20] "timeBodyAccelerationJerkMagnitute-mean"     
[21] "timeBodyGyroMagnitute-mean"                 
[22] "timeBodyGyroJerkMagnitute-mean"             
[23] "frequencyBodyAcceleration-mean-X"           
[24] "frequencyBodyAcceleration-mean-Y"           
[25] "frequencyBodyAcceleration-mean-Z"           
[26] "frequencyBodyAccelerationJerk-mean-X"       
[27] "frequencyBodyAccelerationJerk-mean-Y"       
[28] "frequencyBodyAccelerationJerk-mean-Z"       
[29] "frequencyBodyGyro-mean-X"                   
[30] "frequencyBodyGyro-mean-Y"                   
[31] "frequencyBodyGyro-mean-Z"                   
[32] "frequencyBodyAccelerationMagnitute-mean"    
[33] "frequencyBodyAccelerationJerkMagnitute-mean"
[34] "frequencyBodyGyroMagnitute-mean"            
[35] "frequencyBodyGyroJerkMagnitute-mean"        
[36] "timeBodyAcceleration-std-X"                 
[37] "timeBodyAcceleration-std-Y"                 
[38] "timeBodyAcceleration-std-Z"                 
[39] "timeGravityAcceleration-std-X"              
[40] "timeGravityAcceleration-std-Y"              
[41] "timeGravityAcceleration-std-Z"              
[42] "timeBodyAccelerationJerk-std-X"             
[43] "timeBodyAccelerationJerk-std-Y"             
[44] "timeBodyAccelerationJerk-std-Z"             
[45] "timeBodyGyro-std-X"                         
[46] "timeBodyGyro-std-Y"                         
[47] "timeBodyGyro-std-Z"                         
[48] "timeBodyGyroJerk-std-X"                     
[49] "timeBodyGyroJerk-std-Y"                     
[50] "timeBodyGyroJerk-std-Z"                     
[51] "timeBodyAccelerationMagnitute-std"          
[52] "timeGravityAccelerationMagnitute-std"       
[53] "timeBodyAccelerationJerkMagnitute-std"      
[54] "timeBodyGyroMagnitute-std"                  
[55] "timeBodyGyroJerkMagnitute-std"              
[56] "frequencyBodyAcceleration-std-X"            
[57] "frequencyBodyAcceleration-std-Y"            
[58] "frequencyBodyAcceleration-std-Z"            
[59] "frequencyBodyAccelerationJerk-std-X"        
[60] "frequencyBodyAccelerationJerk-std-Y"        
[61] "frequencyBodyAccelerationJerk-std-Z"        
[62] "frequencyBodyGyro-std-X"                    
[63] "frequencyBodyGyro-std-Y"                    
[64] "frequencyBodyGyro-std-Z"                    
[65] "frequencyBodyAccelerationMagnitute-std"     
[66] "frequencyBodyAccelerationJerkMagnitute-std" 
[67] "frequencyBodyGyroMagnitute-std"             
[68] "frequencyBodyGyroJerkMagnitute-std"

 
##
##
