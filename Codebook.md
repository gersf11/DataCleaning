This Code book describes the files created by script run_analysis.R

A variable from original data set was considered relevant to this assigment if its name contained: [mean, Mean or std]
Both files have the column names in the first line

##tidy_data_set.txt

1. **subjectId**: Subject identifier, range is [1-30], no units, data type: integer

2. **activityName**: Name of activity, range: ("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"), no units, data type: string

3. **activityId**: Activity numeric identifier, range [1-6], no units, data type: integer

4. **[4-89]**:  The rest of columns contain the mean of each of the relevant variables, grouped by subjectId and activityName, data type: double

number of rows: 180 (without header)

##complete_clean_data_set.txt

1. **index**: unique identifier per measurement

2. **subjectId**: Subject identifier, range is [1-30], no units, data type: integer

3. **activityName**: Name of activity, range: ("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"), no units, data type: string

4. **activityId**: Activity numeric identifier, range [1-6], no units, data type: integer

5. **[5-90]**:  The rest of columns contain the measurement of each relevant variable

number of rows: 10299 (without header)

The complete list of relevant variables can be found [here](https://github.com/gersf11/DataCleaning/blob/master/relevant_variables.txt)

Column names were modified from the original names following these rules:
* removed "()"
* replace "-" by "_"
* removed ")"
* replaced "," by "_"
* replaced "(" by "_"
