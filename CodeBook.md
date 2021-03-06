CodeBook
========================================================

###Data Processing:

The dataset obtained from the link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Analyzing using R, found 10299 observations, each having 561 variables. 

The activities and subject data (test as well as training)  were in separate text files.  The numbers (1-6) in the activities file were substituted with the character descriptions found in activity_labels.txt file. The combined data was writen out in tidy_data.txt.


The second data set, 'average_tidy_data.txt' was generated by taking the mean for each variable for each subject and activity.


####Variable Names:

Subject  - The assigned subject
Activity - The behavior of the subject while data was collected

Variable names with 'mean' in the name represent means while variable names with 'std' in the name represent standard deviations. 
NOTE: BElow command was used to do the extraction for this codebook: 
      cat features.txt | awk '{print $2}' | egrep 'mean|std' | sed 's/()//'  | sort

   
<!-- -->
   fBodyAcc-mean-X
   fBodyAcc-mean-Y
   fBodyAcc-mean-Z
   fBodyAcc-meanFreq-X
   fBodyAcc-meanFreq-Y
   fBodyAcc-meanFreq-Z
   fBodyAcc-std-X
   fBodyAcc-std-Y
   fBodyAcc-std-Z
   fBodyAccJerk-mean-X
   fBodyAccJerk-mean-Y
   fBodyAccJerk-mean-Z
   fBodyAccJerk-meanFreq-X
   fBodyAccJerk-meanFreq-Y
   fBodyAccJerk-meanFreq-Z
   fBodyAccJerk-std-X
   fBodyAccJerk-std-Y
   fBodyAccJerk-std-Z
   fBodyAccMag-mean
   fBodyAccMag-meanFreq
   fBodyAccMag-std
   fBodyBodyAccJerkMag-mean
   fBodyBodyAccJerkMag-meanFreq
   fBodyBodyAccJerkMag-std
   fBodyBodyGyroJerkMag-mean
   fBodyBodyGyroJerkMag-meanFreq
   fBodyBodyGyroJerkMag-std
   fBodyBodyGyroMag-mean
   fBodyBodyGyroMag-meanFreq
   fBodyBodyGyroMag-std
   fBodyGyro-mean-X
   fBodyGyro-mean-Y
   fBodyGyro-mean-Z
   fBodyGyro-meanFreq-X
   fBodyGyro-meanFreq-Y
   fBodyGyro-meanFreq-Z
   fBodyGyro-std-X
   fBodyGyro-std-Y
   fBodyGyro-std-Z
   tBodyAcc-mean-X
   tBodyAcc-mean-Y
   tBodyAcc-mean-Z
   tBodyAcc-std-X
   tBodyAcc-std-Y
   tBodyAcc-std-Z
   tBodyAccJerk-mean-X
   tBodyAccJerk-mean-Y
   tBodyAccJerk-mean-Z
   tBodyAccJerk-std-X
   tBodyAccJerk-std-Y
   tBodyAccJerk-std-Z
   tBodyAccJerkMag-mean
   tBodyAccJerkMag-std
   tBodyAccMag-mean
   tBodyAccMag-std
   tBodyGyro-mean-X
   tBodyGyro-mean-Y
   tBodyGyro-mean-Z
   tBodyGyro-std-X
   tBodyGyro-std-Y
   tBodyGyro-std-Z
   tBodyGyroJerk-mean-X
   tBodyGyroJerk-mean-Y
   tBodyGyroJerk-mean-Z
   tBodyGyroJerk-std-X
   tBodyGyroJerk-std-Y
   tBodyGyroJerk-std-Z
   tBodyGyroJerkMag-mean
   tBodyGyroJerkMag-std
   tBodyGyroMag-mean
   tBodyGyroMag-std
   tGravityAcc-mean-X
   tGravityAcc-mean-Y
   tGravityAcc-mean-Z
   tGravityAcc-std-X
   tGravityAcc-std-Y
   tGravityAcc-std-Z
   tGravityAccMag-mean
   tGravityAccMag-std
