run_analysis<- function(){
    source("download_data.R")
    source("get_feature_names.R")
    source("get_activity_labels.R")
    source("get_subject_ids.R")
    source("get_activities.R")
    source("get_measurements.R")
    source("get_summary.R")
    ## run_analysis function performs the following:
    # Downloads and extract data to "./data/"
    # Creates a clean data set with measurements from "test" and "train" sets
    # The data set has descriptive column names
    # The file tidy_data_set.txt is created
    # Output of the function is a summary with mean of each variable grouped by activity and subject
    
    # Download file and extract data
    print("Dowloading data")
    download_data()
    data_sets <- c("test", "train")
    merged_dataframes <- list("test" = NULL, "train" = NULL)
    # Get feature names
    features_list <- get_feature_names()
    # Get activity lables
    activity_labels <- get_activity_labels()
    start_index <- 1
    for(data_set in data_sets){
        print(sprintf("Parsing data set %s", data_set))
        # Get subject ids
        subject_ids <- get_subject_ids(data_set, start_index)
        # Get activities
        activities <- get_activities(data_set, start_index, activity_labels)
        # Get measurements
        measurements <- get_measurements(data_set, features_list$features, features_list$relevant_features, features_list$columns_to_read, start_index)
        # Save last index for next iteration
        start_index <- nrow(subject_ids)+1
        # Merge into single data frame
        print(sprintf("Merging data set %s", data_set))
        merged <- Reduce(function(x, y) merge(x, y, all=TRUE), list(subject_ids, activities, measurements))
        merged_dataframes[[data_set]] <- merged
    }
    print("Merging complete data")
    complete_data <-rbind(merged_dataframes$test, merged_dataframes$train)
    
    output_file <- "complete_clean_data_set.txt"
    print(sprintf("Writing to file %s", output_file))
    write.table(complete_data, output_file, row.name=FALSE)
    
    print("Getting summary") 
    summarised <- get_summary(complete_data)
    output_file <- "tidy_data_set.txt"
    print(sprintf("Writing to file %s", output_file))
    write.table(summarised, output_file, row.name=FALSE)
    return(summarised)
    }

