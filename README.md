For Coursera "Getting and Cleaning Data" course by Johns Hopkins University Assignment.

## Overview

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis.

The data was collected from the accelerometers from the Samsung Galaxy S smartphone. 
A full description is available at the [site](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) where the data was obtained.

Data Provided by Coursera can be downloaded using below link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The repo contains a file `run_analysis.R` which will read the initial data, clean it and prepare the tidy data set 
with the average of each variable for each activity and each subject.

There is dependency to R package `dplyr`.

## Files in the repository

* `README.md`
* `CodeBook.md` - Lists the steps taken to clean the data and variables in Tidy data set 
* `run_analysis.R` - Script to clean and create the tiday data
* `tidyDataSet.txt` - Tidy data
