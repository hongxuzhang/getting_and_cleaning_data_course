# Codebook
## Variables
### Activity
  - Activity represents activities that each participants performed in the experiment
    
  - These activities are:
    - WALKING
    - WALKING
    - UPSTAIRS
    - WALKING_DOWNSTAIRS
    - SITTING
    - STANDING
    - LAYING
  
  -Activity was recorded in "y_test.txt" and ""y_train.txt" in the raw data as numbers from 1 to 6. 


### Subject
  - Subject represents number of the participants who performed activites in the experiment 
  
  - Each participant is represented by a number from 1 to 30
  
  - orginally recorded in "subject_test.txt" and "subject_train.txt" in the raw data. 

  
  
### variables representing features 

  tBodyAcc-mean()-X

  tBodyAcc-mean()-Y

  tBodyAcc-mean()-Z

  tBodyAcc-std()-X

  tBodyAcc-std()-Y

  tBodyAcc-std()-Z

  tGravityAcc-mean()-X

  tGravityAcc-mean()-Y

  tGravityAcc-mean()-Z

  tGravityAcc-std()-X

  tGravityAcc-std()-Y

  tGravityAcc-std()-Z

  tBodyAccJerk-mean()-X

  tBodyAccJerk-mean()-Y

  tBodyAccJerk-mean()-Z

  tBodyAccJerk-std()-X

  tBodyAccJerk-std()-Y

  tBodyAccJerk-std()-Z

  tBodyGyro-mean()-X

  tBodyGyro-mean()-Y

  tBodyGyro-mean()-Z

  tBodyGyro-std()-X

  tBodyGyro-std()-Y

  tBodyGyro-std()-Z

  tBodyGyroJerk-mean()-X

  tBodyGyroJerk-mean()-Y

  tBodyGyroJerk-mean()-Z

  tBodyGyroJerk-std()-X

  tBodyGyroJerk-std()-Y

  tBodyGyroJerk-std()-Z

  tBodyAccMag-mean()

  tBodyAccMag-std()

  tGravityAccMag-mean()

  tGravityAccMag-std()

  tBodyAccJerkMag-mean()

  tBodyAccJerkMag-std()

  tBodyGyroMag-mean()

  tBodyGyroMag-std()

  tBodyGyroJerkMag-mean()

  tBodyGyroJerkMag-std()

  fBodyAcc-mean()-X

  fBodyAcc-mean()-Y

  fBodyAcc-mean()-Z

  fBodyAcc-std()-X

  fBodyAcc-std()-Y

  fBodyAcc-std()-Z

  fBodyAcc-meanFreq()-X

  fBodyAcc-meanFreq()-Y

  fBodyAcc-meanFreq()-Z

  fBodyAccJerk-mean()-X

  fBodyAccJerk-mean()-Y

  fBodyAccJerk-mean()-Z

  fBodyAccJerk-std()-X

  fBodyAccJerk-std()-Y

  fBodyAccJerk-std()-Z

  fBodyAccJerk-meanFreq()-X

  fBodyAccJerk-meanFreq()-Y

  fBodyAccJerk-meanFreq()-Z

  fBodyGyro-mean()-X

  fBodyGyro-mean()-Y

  fBodyGyro-mean()-Z

  fBodyGyro-std()-X

  fBodyGyro-std()-Y

  fBodyGyro-std()-Z

  fBodyGyro-meanFreq()-X

  fBodyGyro-meanFreq()-Y

  fBodyGyro-meanFreq()-Z

  fBodyAccMag-mean()

  fBodyAccMag-std()

  fBodyAccMag-meanFreq()

  fBodyBodyAccJerkMag-mean()

  fBodyBodyAccJerkMag-std()

  fBodyBodyAccJerkMag-meanFreq()

  fBodyBodyGyroMag-mean()

  fBodyBodyGyroMag-std()

  fBodyBodyGyroMag-meanFreq()

  fBodyBodyGyroJerkMag-mean()

  fBodyBodyGyroJerkMag-std()

  fBodyBodyGyroJerkMag-meanFreq()
  
  

      - The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

      - Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
      - Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals)

      - Only the mean(Mean value) and std(Standard deviation) of the features are extracted to form the variables in the current dataset. The original feature list can be found in "features.txt"

For more information concerning features, refer to:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
   
