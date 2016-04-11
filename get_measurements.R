get_measurements<- function(data_set, features, relevant_features, columns_to_read, start_index){
    ## Get measurements
    # This function reads the file X_[train|test].txt
    # And returns a data frame with the columns:
    # index and colums_to_read
    
    # read file, only selected columns
    X_file_name <- sprintf("./data/UCI HAR Dataset/%s/X_%s.txt", data_set,data_set)
    X_data_selected <- read.table(X_file_name, colClasses = columns_to_read, blank.lines.skip = TRUE)
    
    # rename columns
    relevant_features_names <- features$featureName[relevant_features]
    names(X_data_selected) <- relevant_features_names
    
    # add index
    X_data_selected$index<-seq.int(start_index, start_index+nrow(X_data_selected)-1)
    return(X_data_selected)
    }