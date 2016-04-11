get_activities<- function(data_set, start_index, activity_labels){
    ## Get activity of each measurement
    # This function reads the file y_[train|test].txt
    # And returns a data frame with the columns:
    # activityId, index, activityName
    # read file
    y_file_name <- sprintf("./data/UCI HAR Dataset/%s/y_%s.txt", data_set,data_set)
    y_data <- read.table(y_file_name)
    # rename column to activityId
    names(y_data) <- "activityId"
    # add index
    y_data$index<-seq.int(start_index, start_index+nrow(y_data)-1)
    # add column activityName with descriptive name of activityId
    activityName <- activity_labels[y_data$activityId]
    y_data$activityName <- activityName
    return(y_data)
    }
