# Code Book

This code book summarizes the resulting data fields in `tidydata.txt`.

## Source Data
A full description of the data used in this project can be found at [The UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

[Source Data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age range of 19-48 years. Each subject performed six activities (Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, Laying) while wearing a smartphone.

## Identifiers

* `subject` - Test Subject ID
* `activity` - The activity performed when the measurements were taken

## Measurements

* `timeBodyAccelerometer-mean()-X`
* `timeBodyAccelerometer-mean()-Y`
* `timeBodyAccelerometer-mean()-Z`
* `timeBodyAccelerometer-std()-X`
* `timeBodyAccelerometer-std()-Y`
* `timeBodyAccelerometer-std()-Z`
* `timeGravityAccelerometer-mean()-X`
* `timeGravityAccelerometer-mean()-Y`
* `timeGravityAccelerometer-mean()-Z`
* `timeGravityAccelerometer-std()-X`
* `timeGravityAccelerometer-std()-Y`
* `timeGravityAccelerometer-std()-Z`
* `timeBodyAccelerometerJerk-mean()-X`
* `timeBodyAccelerometerJerk-mean()-Y`
* `timeBodyAccelerometerJerk-mean()-Z`
* `timeBodyAccelerometerJerk-std()-X`
* `timeBodyAccelerometerJerk-std()-Y`
* `timeBodyAccelerometerJerk-std()-Z`
* `timeBodyGyroscope-mean()-X`
* `timeBodyGyroscope-mean()-Y`
* `timeBodyGyroscope-mean()-Z`
* `timeBodyGyroscope-std()-X`
* `timeBodyGyroscope-std()-Y`
* `timeBodyGyroscope-std()-Z`
* `timeBodyGyroscopeJerk-mean()-X`
* `timeBodyGyroscopeJerk-mean()-Y`
* `timeBodyGyroscopeJerk-mean()-Z`
* `timeBodyGyroscopeJerk-std()-X`
* `timeBodyGyroscopeJerk-std()-Y`
* `timeBodyGyroscopeJerk-std()-Z`
* `timeBodyAccelerometerMagnitude-mean()`
* `timeBodyAccelerometerMagnitude-std()`
* `timeGravityAccelerometerMagnitude-mean()`
* `timeGravityAccelerometerMagnitude-std()`
* `timeBodyAccelerometerJerkMagnitude-mean()`
* `timeBodyAccelerometerJerkMagnitude-std()`
* `timeBodyGyroscopeMagnitude-mean()`
* `timeBodyGyroscopeMagnitude-std()`
* `timeBodyGyroscopeJerkMagnitude-mean()`
* `timeBodyGyroscopeJerkMagnitude-std()`
* `frequencyBodyAccelerometer-mean()-X`
* `frequencyBodyAccelerometer-mean()-Y`
* `frequencyBodyAccelerometer-mean()-Z`
* `frequencyBodyAccelerometer-std()-X`
* `frequencyBodyAccelerometer-std()-Y`
* `frequencyBodyAccelerometer-std()-Z`
* `frequencyBodyAccelerometerJerk-mean()-X`
* `frequencyBodyAccelerometerJerk-mean()-Y`
* `frequencyBodyAccelerometerJerk-mean()-Z`
* `frequencyBodyAccelerometerJerk-std()-X`
* `frequencyBodyAccelerometerJerk-std()-Y`
* `frequencyBodyAccelerometerJerk-std()-Z`
* `frequencyBodyGyroscope-mean()-X`
* `frequencyBodyGyroscope-mean()-Y`
* `frequencyBodyGyroscope-mean()-Z`
* `frequencyBodyGyroscope-std()-X`
* `frequencyBodyGyroscope-std()-Y`
* `frequencyBodyGyroscope-std()-Z`
* `frequencyBodyAccelerometerMagnitude-mean()`
* `frequencyBodyAccelerometerMagnitude-std()`
* `frequencyBodyAccelerometerJerkMagnitude-mean()`
* `frequencyBodyAccelerometerJerkMagnitude-std()`
* `frequencyBodyGyroscopeMagnitude-mean()`
* `frequencyBodyGyroscopeMagnitude-std()`
* `frequencyBodyGyroscopeJerkMagnitude-mean()`
* `frequencyBodyGyroscopeJerkMagnitude-std()`


## Activity Labels

* `WALKING` (value `1`): subject was walking 
* `WALKING_UPSTAIRS` (value `2`): subject was walking up stairs
* `WALKING_DOWNSTAIRS` (value `3`): subject was walking down stairs
* `SITTING` (value `4`): subject was sitting
* `STANDING` (value `5`): subject was standing
* `LAYING` (value `6`): subject was laying down
