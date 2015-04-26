run_analysis <- function() {
  library(dplyr)
  #1. Merges the training and the test sets to create one data set.
# download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","temp.zip",cacheOK = FALSE);
# unzip("temp.zip")
  a<- read.table("UCI HAR Dataset/test/X_test.txt", header=FALSE)
  b<- read.table("UCI HAR Dataset/train/X_train.txt", header=FALSE)
  c_X <- rbind(a,b)  
  a<- read.table("UCI HAR Dataset/test/y_test.txt", header=FALSE)
  b<- read.table("UCI HAR Dataset/train/y_train.txt", header=FALSE)
  c_y <- rbind(a,b)  
  a<- read.table("UCI HAR Dataset/test/subject_test.txt", header=FALSE)
  b<- read.table("UCI HAR Dataset/train/subject_train.txt", header=FALSE)
  c_subject <- rbind(a,b)
  names(c_subject) <- c("subject")
  #2. Extracts only the measurements on the mean and standard deviation for each measurement. 
  features <- read.table("UCI HAR Dataset/features.txt")
  x_names <- features[,2]
  names(c_X) <- x_names
  c_X_subset <- c_X[sort(c(grep("-mean\\(+",x_names),grep("-std+",x_names)))]
  #3 Uses descriptive activity names to name the activities in the data set
  names(c_y) <- c("activity")
  c_y[c_y==1]<-"WALKING" 
  c_y[c_y==2]<-"WALKING_UPSTAIRS" 
  c_y[c_y==3]<-"WALKING_DOWNSTAIRS" 
  c_y[c_y==4]<-"SITTING" 
  c_y[c_y==5]<-"STANDING" 
  c_y[c_y==6]<-"LAYING"
  step_3_aux <- cbind(c_X_subset,c_y) 
  step_3_aux <- cbind(step_3_aux,c_subject) # sorting by subject
  step_3 <- step_3_aux[order(step_3_aux$subject),]
  #4 Appropriately labels the data set with descriptive variable names. 
  group <- names(step_3)
  group<- gsub("Mag","Magnitude",group)
  group<- gsub("-mean\\(\\)","Mean",group)
  group<- gsub("-std\\(\\)","StandardDeviation", group)
  group<- gsub("Acc","Accelerometer", group)
  group<- gsub("Gyro","Gyroscope", group)
  group<- gsub("-X","AxisX", group)
  group<- gsub("-Y","AxisY", group)
  group<- gsub("-Z","AxisZ", group)
  group<- gsub("Jerk","JerkSignal", group)
  group<- gsub("tBody","timeBody", group)
  group<- gsub("tGravity","timeGravity", group)
  group<- gsub("fBody","frecuencyBody", group)
  group<- gsub("fGravity","frecuencyGravity", group)
  names(step_3) <- group
  #5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject
  step_5 <- step_3 %>% group_by(activity,subject) %>%  summarise_each(funs(mean))  
  write.table(step_5,"project_results.txt",row.name=FALSE)
}