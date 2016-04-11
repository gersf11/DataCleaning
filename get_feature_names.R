get_feature_names<- function(){
    # This function reads the file features.txt
    # And returns a list with the following:
    # features, relevant_features, columns_to_read
    
    # read file
    features_file_name <- "./data/UCI HAR Dataset/features.txt"
    features <- read.table(features_file_name)
    
    # rename columns
    names(features) <- c("featureId", "featureName")
    
    # clean column names
    features$featureName <- gsub("()","",features$featureName, fixed = TRUE)
    features$featureName <- gsub("-","_",features$featureName, fixed = TRUE)
    features$featureName <- gsub(")","",features$featureName, fixed = TRUE)
    features$featureName <- gsub(",","_",features$featureName, fixed = TRUE)
    features$featureName <- gsub("(","_",features$featureName, fixed = TRUE)
    
    # select relevant features
    relevant_features <- grep("[Mm]ean|std", features$featureName)
    columns_to_read <- rep("NULL", nrow(features))
    columns_to_read[relevant_features] <- "character"
    return_list<- list("features" = features, "relevant_features" = relevant_features, "columns_to_read" = columns_to_read)
    return(return_list)
}