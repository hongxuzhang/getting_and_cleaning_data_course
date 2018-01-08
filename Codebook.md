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

  
  
### Value 

  - Value represents the average feature values(refer to the end) of each variable for each activity and each subject.
  
  - they are like this. eg:
     "-0.562911611255539"
     "-0.594554938801989"

  - orginally recored in in "x_test.txt" and ""x_train.txt" in the raw data. 
  
  - procedures to calculate the Value: 
     1. collect the features from the column names in the data in "x_test.txt" and ""x_train.txt", 
        and make it features varibale in the dataframe.
     2. extract the features only on the mean and standard deviation in "features.txt"
     3. match features in "x_test.txt" and ""x_train.txt" with extracted "features.txt", and subset the dataframe with the features that matches.
     4. calculate the average feature values of each variable for each activity and each subject
  
 ----------------------- 
 ## Note 
* feature values 

 The feature values are recoreded from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ to
 study the feature of a certain activtity.
 

there are 561 features. some of the features are:
1 tBodyAcc-mean()-X

2 tBodyAcc-mean()-Y

3 tBodyAcc-mean()-Z

4 tBodyAcc-std()-X

5 tBodyAcc-std()-Y

6 tBodyAcc-std()-Z

for more information concerning features, refer to:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
 
 
 
 
 
 
 
 



   
