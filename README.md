###Getting and Cleaning Data: CourseProject
===========================================


- Data source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
- Command used to do feature extraction for CodeBook:
    - cat features.txt | awk '{print $2}' | egrep 'mean|std' | sed 's/()//'  | sort
- In RStudio, run below:
    - source("run_analysis.R")

- Expected output:
    - "tidy_data.txt""
    - "average_tidy_data.txt"

NOTE: These two output files generated are included in this GIT Repository.

