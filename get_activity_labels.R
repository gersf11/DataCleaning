get_activity_labels<- function(){
    ## Get activity labels from file: "./data/UCI HAR Dataset/activity_labels.txt
    # returns a list with labels
    
    activity_file_name <- "./data/UCI HAR Dataset/activity_labels.txt"
    activityt_data <- read.table(activity_file_name)
    return(activityt_data$V2)
}