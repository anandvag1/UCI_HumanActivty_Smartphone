#
#
#
#

library(dplyr)

# Step 1 - Load feature names from "features.txt" and clean the variable names
features <- read.csv("features.txt", sep = "",header = FALSE, col.names = c("Index", "Feature"),as.is = FALSE)
features[,2] <- gsub("-","_", features[,2])
features[,2] <- gsub("\\(\\)","", features[,2])


# Step 2 - Load activity labels from "activity_labels.txt"
activity_labels <- read.csv("activity_labels.txt", sep = "",header = FALSE , col.names = c("Activity", "Activity_Name"))

# Step 3 - Load training data set (X, y and subject) from "train" folder
train_X <- read.csv("./train/X_train.txt", sep = "",header = FALSE,col.names = features[,2])
train_y <- read.csv("./train/y_train.txt", sep = "",header = FALSE, col.names = c("Activity"))
subject_train <- read.csv("./train/subject_train.txt", sep = "",header = FALSE,col.names = c("Subject"))

# Step 4 - Load test data set (X, y and subject) from "test" folder
test_X <- read.csv("./test/X_test.txt", sep = "",header = FALSE,col.names = features[,2])
test_y <- read.csv("./test/y_test.txt", sep = "",header = FALSE, col.names = c("Activity"))
subject_test <- read.csv("./test/subject_test.txt", sep = "",header = FALSE,col.names = c("Subject"))

# Step 5 - Merge Train and Test X data
all_X <- bind_rows(train_X,test_X)

# Step 6 - Extracts only the measurements on the mean and standard deviation for each measurement
all_X <- select(all_X, contains("_mean_",ignore.case = FALSE), contains("_std_", ignore.case = FALSE), ends_with("_mean", ignore.case = FALSE), ends_with("_std",ignore.case = FALSE))

# Step 7 - Join the activity from train_y and test_y
all_y <- bind_rows(train_y,test_y)

# Step 8 - Join the activity with Activity Nmae so it can be merged to Train and Test X data
temp <- data.frame("ID" = 1:dim(all_y)[1])
all_y <- bind_cols(temp, all_y)
all_y_activity <- merge(all_y,activity_labels, by = "Activity", sort = FALSE)
all_y_activity <- all_y_activity [order(all_y_activity$ID), ]

# Step 9 - Join the X and Y activity name
all_X_Act <- bind_cols(all_y_activity[3], all_X)

# Step 10 - Join the Subject from train and test data set
all_subjects <- bind_rows(subject_train,subject_test)

# Step 11 - Join all the Subjects with X and Y/Activity data created in  step 9
all_X_Act_Sub <- bind_cols(all_subjects, all_X_Act)

# Step 12 - Crarte a tidy data by with the average of each variable for each activity and each subject
tidyDataSet <- 
all_X_Act_Sub %>%
  group_by(Subject,Activity_Name) %>%
  summarize_each(mean)

# Step 13 - Write the tidy data set to file
write.table(x = tidyDataSet,file = "tidyDataSet.txt",row.names = FALSE)
  



