rm(list=ls())

#reading features and activity data
features <- read.table("C:/Users/Henry/Desktop/Henry/UCI HAR Dataset/Getting-and-Cleaning-Data-Course-Project/features.txt")
#View(features)

activities <- read.table("C:/Users/Henry/Desktop/Henry/UCI HAR Dataset/Getting-and-Cleaning-Data-Course-Project/activity_labels.txt")
#View(activities)

#reading train data
x_train <- read.table("C:/Users/Henry/Desktop/Henry/UCI HAR Dataset/Getting-and-Cleaning-Data-Course-Project/train/X_train.txt")  
#View(x_train)

colnames(x_train) <- features$V2 #we put the names equal to second vector of features
y_train <- read.table("C:/Users/Henry/Desktop/Henry/UCI HAR Dataset/Getting-and-Cleaning-Data-Course-Project/train/y_train.txt") 
#View(y_train)
#colnames(y_train)


x_train$activity <- y_train$V1
#colnames(x_train)

subject_train <- read.table("C:/Users/Henry/Desktop/Henry/UCI HAR Dataset/Getting-and-Cleaning-Data-Course-Project/train/subject_train.txt") 
#View(subject_train)

x_train$subject <- factor(subject_train$V1)


###### test data

x_test <- read.table("C:/Users/Henry/Desktop/Henry/UCI HAR Dataset/Getting-and-Cleaning-Data-Course-Project/test/X_test.txt")
#View(x_test)
colnames(x_test) <- features$V2
y_test <- read.table("C:/Users/Henry/Desktop/Henry/UCI HAR Dataset/Getting-and-Cleaning-Data-Course-Project/test/y_test.txt") 
x_test$activity <- y_test$V1
subject_test <- read.table("C:/Users/Henry/Desktop/Henry/UCI HAR Dataset/Getting-and-Cleaning-Data-Course-Project/test/subject_test.txt")
x_test$subject <- factor(subject_test$V1)




#merge train and test sets (STEP 1)
dataset <- rbind(x_test, x_train) 


#filter column names (STEP 2)
#Extracts only the measurements on the mean and standard deviation for each measurement.
#install.packages("dplir")
library(dplyr)

colnames(dataset)
TidyData <- dataset %>% select(subject,activity,contains("mean"), contains("std"))
colnames(TidyData)


#Uses descriptive activity names to name the activities in the data set
#change the numver for the string activitie
TidyData$activity <- activities[TidyData$activity, 2]



names(TidyData) <- gsub("Acc", "Accelerometer", names(TidyData))
names(TidyData)<-gsub("Gyro", "Gyroscope", names(TidyData))
names(TidyData)<-gsub("BodyBody", "Body", names(TidyData))
names(TidyData)<-gsub("Mag", "Magnitude", names(TidyData))
names(TidyData)<-gsub("^t", "Time", names(TidyData))
names(TidyData)<-gsub("^f", "Frequency", names(TidyData))
names(TidyData)<-gsub("tBody", "TimeBody", names(TidyData))
names(TidyData)<-gsub("-mean()", "Mean", names(TidyData), ignore.case = TRUE)
names(TidyData)<-gsub("-std()", "STD", names(TidyData), ignore.case = TRUE)
names(TidyData)<-gsub("-freq()", "Frequency", names(TidyData), ignore.case = TRUE)
names(TidyData)<-gsub("angle", "Angle", names(TidyData))
names(TidyData)<-gsub("gravity", "Gravity", names(TidyData))

names(TidyData)


####Step5
#Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for 
#each activity and each subject.


Data <- TidyData %>% 
        group_by(subject,activity) %>% 
        arrange(activity) %>% 
        summarise_all(funs(mean))

names(Data)

write.table(Data, "FinalData.txt", row.name=FALSE)



















