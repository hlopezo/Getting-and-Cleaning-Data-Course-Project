# Getting and Cleaning Data - Course Project


## Modifications
- Merging the training and the test sets to create one data set.
- Extracting only the measurements on the mean and standard deviation for each measurement.
- Useing descriptive activity names to name the activities in the data set
- Appropriately labeling the data set with descriptive variable names.
- Creating a second, independent tidy data set with the average of each variable for each activity and each subject.

## Descriptions

The **run_analysis.R** script performs the data preparation and then followed by the 5 steps required as described in the course project's definition.

* Download the dataset
  + Dataset downloaded and extracted under the folder called UCI HAR Dataset.
*Assign each data to variables
  + features <- features.txt : 561 rows, 2 columns
   The features selected for this database come from the accelerometer and gyroscope .
  + activities <- activity_labels.txt : 6 rows, 2 columns
   List of activities performed when the corresponding measurements were taken and its codes (labels)
  + subject_test <- test/subject_test.txt : 2947 rows, 1 column
   contains test data of 9/30 volunteer test subjects being observed
  + x_test <- test/X_test.txt : 2947 rows, 563 columns
   contains recorded features test data
  + y_test <- test/y_test.txt : 2947 rows, 1 columns
   contains test data of activities'code labels
  + subject_train <- test/subject_train.txt : 7352 rows, 1 column
   contains train data of 21/30 volunteer subjects being observed
  + x_train <- test/X_train.txt : 7352 rows, 563 columns
   contains recorded features train data
  + y_train <- test/y_train.txt : 7352 rows, 1 columns
   contains train data of activities'code labels


## Measurements
* "TimeBodyAccelerometerMean()-X"
* "TimeBodyAccelerometerMean()-Z"
* "TimeGravityAccelerometerMean()-Y"
* "TimeBodyAccelerometerJerkMean()-X"
* "TimeBodyAccelerometerJerkMean()-Z"
* "TimeBodyGyroscopeMean()-Y"
* "TimeBodyGyroscopeJerkMean()-X"
* "TimeBodyGyroscopeJerkMean()-Z"
* "TimeGravityAccelerometerMagnitudeMean()"
* "TimeBodyGyroscopeMagnitudeMean()"
* "FrequencyBodyAccelerometerMean()-X"
* "FrequencyBodyAccelerometerMean()-Z"
* "FrequencyBodyAccelerometerMeanFreq()-Y"
* "FrequencyBodyAccelerometerJerkMean()-X"
* "FrequencyBodyAccelerometerJerkMean()-Z"
* "FrequencyBodyAccelerometerJerkMeanFreq()-Y"
* "FrequencyBodyGyroscopeMean()-X"
* "FrequencyBodyGyroscopeMean()-Z"
* "FrequencyBodyGyroscopeMeanFreq()-Y"
* "FrequencyBodyAccelerometerMagnitudeMean()"
* "FrequencyBodyAccelerometerJerkMagnitudeMean()"
* "FrequencyBodyGyroscopeMagnitudeMean()"
* "FrequencyBodyGyroscopeJerkMagnitudeMean()"
* "Angle(TimeBodyAccelerometerMean,Gravity)"
* "Angle(TimeBodyGyroscopeMean,GravityMean)"
* "Angle(X,GravityMean)"
* "Angle(Z,GravityMean)"
* "TimeBodyAccelerometerSTD()-Y"
* "TimeGravityAccelerometerSTD()-X"
* "TimeGravityAccelerometerSTD()-Z"
* "TimeBodyAccelerometerJerkSTD()-Y"
* "TimeBodyGyroscopeSTD()-X"
* "TimeBodyGyroscopeSTD()-Z"
* "TimeBodyGyroscopeJerkSTD()-Y"
* "TimeBodyAccelerometerMagnitudeSTD()"
* "TimeBodyAccelerometerJerkMagnitudeSTD()"
* "TimeBodyGyroscopeJerkMagnitudeSTD()"
* "FrequencyBodyAccelerometerSTD()-Y"
* "FrequencyBodyAccelerometerJerkSTD()-X"
* "FrequencyBodyAccelerometerJerkSTD()-Z"
* "FrequencyBodyGyroscopeSTD()-Y"
* "FrequencyBodyAccelerometerMagnitudeSTD()"
* "FrequencyBodyGyroscopeMagnitudeSTD()"
* "TimeBodyAccelerometerMean()-Y"
* "TimeGravityAccelerometerMean()-X"
* "TimeGravityAccelerometerMean()-Z"
* "TimeBodyAccelerometerJerkMean()-Y"
* "TimeBodyGyroscopeMean()-X"
* "TimeBodyGyroscopeMean()-Z"
* "TimeBodyGyroscopeJerkMean()-Y"
* "TimeBodyAccelerometerMagnitudeMean()"
* "TimeBodyAccelerometerJerkMagnitudeMean()"
* "TimeBodyGyroscopeJerkMagnitudeMean()"
* "FrequencyBodyAccelerometerMean()-Y"
* "FrequencyBodyAccelerometerMeanFreq()-X"
* "FrequencyBodyAccelerometerMeanFreq()-Z"
* "FrequencyBodyAccelerometerJerkMean()-Y"
* "FrequencyBodyAccelerometerJerkMeanFreq()-X"
* "FrequencyBodyAccelerometerJerkMeanFreq()-Z"
* "FrequencyBodyGyroscopeMean()-Y"
* "FrequencyBodyGyroscopeMeanFreq()-X"
* "FrequencyBodyGyroscopeMeanFreq()-Z"
* "FrequencyBodyAccelerometerMagnitudeMeanFreq()"
* "FrequencyBodyAccelerometerJerkMagnitudeMeanFreq()"
* "FrequencyBodyGyroscopeMagnitudeMeanFreq()"
* "FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()"
* "Angle(TimeBodyAccelerometerJerkMean),GravityMean)"
* "Angle(TimeBodyGyroscopeJerkMean,GravityMean)"
* "Angle(Y,GravityMean)"
* "TimeBodyAccelerometerSTD()-X"
* "TimeBodyAccelerometerSTD()-Z"
* "TimeGravityAccelerometerSTD()-Y"
* "TimeBodyAccelerometerJerkSTD()-X"
* "TimeBodyAccelerometerJerkSTD()-Z"
* "TimeBodyGyroscopeSTD()-Y"
* "TimeBodyGyroscopeJerkSTD()-X"
* "TimeBodyGyroscopeJerkSTD()-Z"
* "TimeGravityAccelerometerMagnitudeSTD()"
* "TimeBodyGyroscopeMagnitudeSTD()"
* "FrequencyBodyAccelerometerSTD()-X"
* "FrequencyBodyAccelerometerSTD()-Z"
* "FrequencyBodyAccelerometerJerkSTD()-Y"
* "FrequencyBodyGyroscopeSTD()-X"
* "FrequencyBodyGyroscopeSTD()-Z"
* "FrequencyBodyAccelerometerJerkMagnitudeSTD()"
* "FrequencyBodyGyroscopeJerkMagnitudeSTD()"


