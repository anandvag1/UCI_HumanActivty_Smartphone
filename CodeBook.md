# Prerequisite

Downlaod the data provided by coursera using the [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
Place the `run_analysis.R` in folder containing the features and activity lables files. This folder should contain two sub-folders for Train and Test data set.

# Steps taken to clean the initial data

Below are the steps taken to clean and create a tidy data set

1. Load feature names from "features.txt" and clean the variable names by replacing "-" with "_" and removing "()"
1. Load activity labels from "activity_labels.txt"
1. Load training data set (X, y and subject) from "train" folder
1. Load test data set (X, y and subject) from "test" folder
1. Merge Train and Test X data
1. Extract from X only the measurements on the mean and standard deviation
1. Merge Train and Test Y data and update join with activty names
1. Join the Subject from train and test data set
1. Create a tidy data by with the average of each variable for each activity and each subject
1. Write the tidy data set to file


# Columns of Tidy data

* Subject - Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30
* Activity_Name - Contains activity name performed by each subject like WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING
STANDING, LAYING

Below are the variables for mean and standard deviation for each measurement

* Activity_Name* 
* tBodyAcc_mean_X
* tBodyAcc_mean_Y
* tBodyAcc_mean_Z 
* tGravityAcc_mean_X
* tGravityAcc_mean_Y 
* tGravityAcc_mean_Z 
* tBodyAccJerk_mean_X 
* tBodyAccJerk_mean_Y 
* tBodyAccJerk_mean_Z 
* tBodyGyro_mean_X
* tBodyGyro_mean_Y 
* tBodyGyro_mean_Z 
* tBodyGyroJerk_mean_X 
* tBodyGyroJerk_mean_Y 
* tBodyGyroJerk_mean_Z 
* fBodyAcc_mean_X
* fBodyAcc_mean_Y 
* fBodyAcc_mean_Z 
* fBodyAccJerk_mean_X 
* fBodyAccJerk_mean_Y 
* fBodyAccJerk_mean_Z
* fBodyGyro_mean_X
* fBodyGyro_mean_Y
* fBodyGyro_mean_Z 
* tBodyAcc_std_X
* tBodyAcc_std_Y 
* tBodyAcc_std_Z 
* tGravityAcc_std_X 
* tGravityAcc_std_Y 
* tGravityAcc_std_Z 
* tBodyAccJerk_std_X 
* tBodyAccJerk_std_Y 
* tBodyAccJerk_std_Z 
* tBodyGyro_std_X
* tBodyGyro_std_Y 
* tBodyGyro_std_Z 
* tBodyGyroJerk_std_X
* tBodyGyroJerk_std_Y 
* tBodyGyroJerk_std_Z 
* fBodyAcc_std_X
* fBodyAcc_std_Y 
* fBodyAcc_std_Z 
* fBodyAccJerk_std_X 
* fBodyAccJerk_std_Y 
* fBodyAccJerk_std_Z 
* fBodyGyro_std_X
* fBodyGyro_std_Y 
* fBodyGyro_std_Z
* tBodyAccMag_mean
* tGravityAccMag_mean 
* tBodyAccJerkMag_mean 
* tBodyGyroMag_mean
* tBodyGyroJerkMag_mean 
* fBodyAccMag_mean
* fBodyBodyAccJerkMag_mean
* fBodyBodyGyroMag_mean
* fBodyBodyGyroJerkMag_mean 
* tBodyAccMag_std
* tGravityAccMag_std
* tBodyAccJerkMag_std 
* tBodyGyroMag_std
* tBodyGyroJerkMag_std 
* fBodyAccMag_std
* fBodyBodyAccJerkMag_std 
* fBodyBodyGyroMag_std
* fBodyBodyGyroJerkMag_std
