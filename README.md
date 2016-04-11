### Data Cleaning project
This repository contains the scripts of the Data Cleaning project, part of Data Science Especialization by Coursera

## Assignment

The assignment in this project is to clean the data from "Human Activity Recognition Using Smartphones Data Set".
[[Experiment description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones),
[Data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)]
This data set contains measurements obtanied from a group of 30 volunteers that performed six activities.
Their activity was recorded through a mobile device equipped with accelerometer and gyroscope.

The objective of this assignment is to produce a tidy data set that contains a summary (mean) of the measured variables grouped by subject and activity.

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
