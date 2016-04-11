download_data<- function(){
    
    # Downloads data to "./data"
    # downloaded file name is: "./data/Dataset.zip"
    dir_name <- "data"
    # Create data folder
    dir_path <- file.path(getwd(), dir_name)
    # warning is suppressed
    dir.create(dir_path, showWarnings = FALSE)
    file_name <- "Dataset.zip"
    file_path <- file.path(dir_path, file_name)
    # If file doesn't exist
    if(!file.exists(file_path)){
        # download file
        download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", file_path)
    }
    else{
        print("Zip file already exits")
    }
    
    unzip_folder <- file.path(dir_path, "UCI HAR Dataset")
    
    if(!dir.exists(unzip_folder)){
        # Extract zip file to "./data"
        print("Extractig data")
        unzip(file_path, exdir = dir_path)
    }
    else{
        print("Folder with unzip data already exits")
    }
    

}