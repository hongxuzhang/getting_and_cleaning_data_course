# The goals of this script is to:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with 
#    the average of each variable for each activity and each subject.

#load library 
library(dplyr)
library(tidyr)
library(readr)

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
# Appropriately labels the data set with descriptive variable names

#bind all test data and shaping
test<- cbind(subject_test,y_test,x_test)#combine three test datasets into one
setnames(test,old=1:2,new=c("Subject","Activity")) #set new names to the first 2 colums (REQUEST_4)
test <- gather(test, Feature, Value, -(Subject:Activity)) #reshaping data to avoid the problem of values mixed in variable names, and name the new variable "Feature" 
test$Type <- "test" # record the dataType before combing

#bind all train data and shaping
train<- cbind(subject_train,y_train,x_train)
setnames(train,old=1:2,new=c("Subject","Activity")) #set new names to the first 2 colums 
train <- gather(train, Feature, Value, -(Subject:Activity))  #reshaping data to avoid the problem of values mixed in variable names,and name the new variable "Feature" 
train$Type <- "train" # record the dataType before combing

#conbine test data with train data
df <- rbind(test, train)



#-------------[GOAL_2]------------------
# extract only the measurements on the mean and std 

df$Feature <- parse_number(df$Feature)#omit the V in V1 for match later
features_of_mean_std <- features[grep("mean|std",features$V2), ] #extract only mean and std from features
df <- df[(df$Feature %in% features_of_mean_std$V1),] #subsetting df of only features_of_mean_std



#-------------[GOAL_3]------------------
# Uses descriptive activity names to name the activities in the data set

activity <- df$Activity #subset Activity colunms for replace
activity<- gsub(6,"LAYING",activity)# replace numbers of Activity with descriptive activity names 
activity<- gsub(5,"STANDING",activity)
activity<- gsub(4,"SITTING",activity)
activity<- gsub(3,"WALKING_DOWNSTAIRS",activity)
activity<- gsub(2,"WALKING_UPSTAIRS",activity)
activity<- gsub(1,"WALKING",activity)
df$Activity <-activity #add back to df 



#-------------[GOAL_3]------------------
#creates new df from the df above with the average of each variable for each activity and each subject 

df_new <- df %>% 
  group_by(Activity,Subject) %>% 
  summarise(Value=mean(Value)) %>% 
  print

#output tidy data
write.table(df_new, file="tidydata.txt",row.name=FALSE)

