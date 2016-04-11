get_summary<- function(clean_data){
    library(plyr)
    library(dplyr)
    data_names <- names(clean_data)
    # remove the first 4 elements of data names (index, subjectId, activityId, activityName)
    variables <- data_names[-c(1:4)]
    # convert data of 'variables' in double
    for (variable in variables){
        clean_data[[variable]] <- as.double(clean_data[[variable]])
    }
    # group by subjectId and activityName
    grouped <- group_by(clean_data, subjectId, activityName)
    # summarise 
    summarised <- summarise_each(grouped, funs(mean), -index)
    return(summarised)
}