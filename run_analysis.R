#reading in the data
x1 <- read.table("UCI HAR Dataset/test/X_test.txt")
x2 <- read.table("UCI HAR Dataset/train/X_train.txt")

#combines the test/training tables
x <- rbind(x1, x2)


y1 <- read.table("UCI HAR Dataset/test/y_test.txt")
y2 <- read.table("UCI HAR Dataset/train/y_train.txt")

#combines the test/training tables
y <- rbind(y1, y2)


subject1 <- read.table("UCI HAR Dataset/test/subject_test.txt")
subject2 <- read.table("UCI HAR Dataset/train/subject_train.txt")

#combines the test/training tables
subject <- rbind(subject1, subject2)
names(subject) <- "Subject"


#getting feature list
features <- read.table("UCI HAR Dataset/features.txt")


#gets column numbers with 'mean' or 'std' in the title
mean_std_columns <- grep('mean|std', features[, 2])


#subsets based on only columns with mean or std
x <- x[, mean_std_columns]
names(x) <- features[mean_std_columns,][, 2]
names(x) <- gsub("\\(\\)", "", names(x))


#activities
activities <- read.table("UCI HAR Dataset/activity_labels.txt")


#assigning values in activities to the y table
y[, 1] <- activities$V2[match(y$V1, activities$V1)]
names(y) <- "Activity"


#creates new data set
tidy_data <- cbind(subject, y, x)


#aggregates the data
avg_tidy_data <- aggregate(tidy_data[, 3:81], by = list(tidy_data$Subject, tidy_data$Activity), FUN = mean)
colnames(avg_tidy_data)[1:2] <- c("Subject", "Activity")


#writes the csvs
write.table(tidy_data, "tidy_data.txt")
write.table(avg_tidy_data, "average_tidy_data.txt")

