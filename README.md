Getting_and_cleaning_data_course week4 Assignment

Files in this repo
    README.md -- this file you are reading
    CodeBook.md -- describing variables, the data and transformations
    run_analysis.R -- actual R code
    

Raw data to be cleaned
  the original raw data is here:
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
  
  the data used in "run_analysis.R" are:
  1.subject_test.txt
  x_test.txt
  y_test.txt
  subject_train.txt
  x_train.txt
  y_train.txt
  features.txt
  activity_labels.txt


What does run_analysis.R do
  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement.
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names.
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


How to run "run_analysis.R"
just open R and run it. This "run_analysis.R" will do everything for you. There are no other function.R code needed to run "run_analysis.R". 
And you do not need to download the data by yourself. 


