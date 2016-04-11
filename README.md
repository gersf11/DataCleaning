### Data Cleaning project
This repository contains the scripts of the Data Cleaning project, part of Data Science Especialization by Coursera

## Assignment

The assignment in this project is to clean the data from "Human Activity Recognition Using Smartphones Data Set".
[[Experiment description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones),
[Data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)]

This data set contains measurements obtanied from a group of 30 volunteers that performed six activities.
Their activity was recorded through a mobile device equipped with accelerometer and gyroscope.

The relevant variables for this assignment are the mean and standard deviation for each measurement.

The objective of this assignment is to produce a tidy data set that contains a summary (mean) of the relevant variables grouped by subject and activity.

The data is scattered through various txt files. The data has to be collected and merged.

## Strategy

The assigment was divided in small steps. Each step is implemented in a separate R script.
The scripts are:
* run_analysis.R         - This is the main script. It calls all other scripts and controls the execution sequence
* download_data.R        - This script downloads the zip file, it checks first if data is already present
* get_feature_names.R    - Gets a list of all features and a list of relevant features to this assigment (mean and standard deviation)
* get_activity_labels.R  - Extracts activity labels
* get_subject_ids.R      - Reads subject ids from file subject_[train|test].txt
* get_activities.R       - Reads activities from file y_[train|test].txt
* get_measurements.R     - Reads measurements, it only reads the columns of the relevant features as determined by get_feature_names
* get_summary.R          - Using the clean data set, this script produces a tidy data set with a summary of the variables

## How to run it

The script run_analysis.R should run as long as all other scripts are in current workspace. run_analysis will 'Source' all scripts automatically.

get_summary uses plyr and dplyr. These libraries are loaded inside the code but the script doesn't install them. If they are not installed, script will fail.

run_analysis will look for the data in "./data". If it's not there, script will download it and unzip it

## Output

The script produces two txt files:
"complete_clean_data_set.txt" - This file has all the measurements of the relevant variables from raw data
"tidy_data_set.txt" - Contains a summary with the mean of each relevant variable grouped by subject and activity

See [Code book](https://github.com/gersf11/DataCleaning/blob/master/Codebook.md) for more details on the output files

