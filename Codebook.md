This Code book describes the variables from tidy data set created by script run_analysis.R

Column

1. **subjectId**: Subject identifier, range is [1-30], no units, data type: integer
2. **activityName**: Name of activity, range: ("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"), no units, data type: string
3. **activityId**: Activity numeric identifier, range [1-6], no units, data type: integer
4. **[4-89]**:  The rest of columns contain the mean of each of the relevant variables, grouped by subjectId and activityName, data type: double

A variable from original data set was considered relevant to this assigment if its name contained: [mean, Mean or std]
