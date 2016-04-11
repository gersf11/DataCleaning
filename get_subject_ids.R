get_subject_ids<- function(data_set, start_index){
    ## Get subject id of each measurement
    # This function reads the file subject_[train|test].txt
    # And returns a data frame with the columns:
    # subjectId, index
    # read file
    subject_file_name <- sprintf("./data/UCI HAR Dataset/%s/subject_%s.txt", data_set,data_set)
    subject_data <- read.table(subject_file_name)
    # rename column to subjectId
    names(subject_data) <- "subjectId"
    # add index
    subject_data$index<-seq.int(start_index, start_index+nrow(subject_data)-1)
    return(subject_data)
    }
