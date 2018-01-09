# The goals of this script is to:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with 
#    the average of each variable for each activity and each subject.

#load library 
library(dplyr)

#download data
fileURL ="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destfile= file.path(getwd(), "dat.zip")
download.file(fileURL, destfile, method="curl")
dataDownloaded <- date()
unzip(zipfile="dat.zip")

#read data needed into R 
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
x_test <-read.table("./UCI HAR Dataset/test/x_test.txt")
y_test <-read.table("./UCI HAR Dataset/test/y_test.txt")

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
x_train <-read.table("./UCI HAR Dataset/train/x_train.txt")
y_train <-read.table("./UCI HAR Dataset/train/y_train.txt")

features <-read.table("./UCI HAR Dataset/features.txt")
activity_labels <-read.table("./UCI HAR Dataset/activity_labels.txt")


#-------------[GOAL_1] & [GOAL_4]----------------
# Merges the training and the test sets 

x <- rbind(x_test,x_train) #features
y <- rbind(y_test,y_train) #activities
subject <-rbind(subject_test, subject_train)


#-------------[GOAL_4]----------------
# Appropriately labels the data set with descriptive variable names
colnames(x) <- features$V2 #change the column names to decriptive names
colnames(y) <- "Activity"
colnames(subject) <- "Subject"


#-------------[GOAL_2]------------------
# extract only the measurements on the mean and std 
x <- x[,grep("mean|std",features$V2) ] 


#-------------[GOAL_3]------------------
# Uses descriptive activity names to name the activities in the data set
df<-cbind(y,subject,x) 
df$Activity <- factor(df$Activity, labels = as.character(activity_labels[,2]))


#-------------[GOAL_5]------------------
#creates new df from the df above with the average of each variable for each activity and each subject 
df <- df %>% 
  group_by(Activity,Subject) %>% 
  summarise_each(funs(mean)) %>% 
  print


#output tidy data
write.table(df, file="tidydata.txt",row.name=FALSE)

