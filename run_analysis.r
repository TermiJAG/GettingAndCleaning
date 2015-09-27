# Coursera Course Project: Getting and Cleaning Data
# Author: TermiJAG
# runAnalysis.r:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts the measurements on the mean and standard deviation for each measurement.
# 3. Names the activities in the data set
# 4. Labels the data set with descriptive variable names.
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# 1. Merge the training and the test sets to create one data set.

# Set the working directory
library(plyr)
setwd('c://Users//Jascha//My Documents//UCI HAR Dataset//');

#Import features, activityType,test and training data
features     <- read.table('./features.txt',header=FALSE);
activityType <- read.table('./activity_labels.txt',header=FALSE);
subjectTrain <- read.table('./train/subject_train.txt',header=FALSE);
xTrain       <- read.table('./train/x_train.txt',header=FALSE);
yTrain       <- read.table('./train/y_train.txt',header=FALSE);
subjectTest <- read.table('./test/subject_test.txt',header=FALSE);
xTest       <- read.table('./test/x_test.txt',header=FALSE); 
yTest       <- read.table('./test/y_test.txt',header=FALSE); 

# create 'x' data set
xData <- rbind(xTrain, xTest)

# create 'y' data set
yData <- rbind(yTrain, yTest)


# create 'subject' data set
subjectData <- rbind(subjectTrain, subjectTest)

# 2. Extracts the measurements on the mean and standard deviation for each measurement.
#Get Column names

# get only columns with mean() or std() in their names
meanAndStd <- grep("-(mean|std)\\(\\)", features[, 2])

# subset the desired columns
xData <- xData[, meanAndStd]

# correct the column names
names(xData) <- features[meanAndStd, 2]

# 3.Name the activities in the data set

# update values with correct activity names
yData[, 1] <- activityType[yData[, 1], 2]

# correct column name
names(yData) <- "activity"
# 4. Labels the data set with descriptive variable names.

# correct column name
names(subjectData) <- "subject"

# bind all the data in a single data set
allData <- cbind(xData, yData, subjectData) 

# Cleaning the variable names
names(allData)<-gsub("^t", "time", names(allData))
names(allData)<-gsub("^f", "frequency", names(allData))
names(allData)<-gsub("Acc", "Accelerometer", names(allData))
names(allData)<-gsub("Gyro", "Gyroscope", names(allData))
names(allData)<-gsub("Mag", "Magnitude", names(allData))
names(allData)<-gsub("BodyBody", "Body", names(allData))

# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

tidyData <- ddply(allData, .(subject, activity), function(x) colMeans(x[, 1:66]))

write.table(tidyData, "tidyData.txt", row.name=FALSE)
