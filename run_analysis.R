# Load "dplyr" library
library(dplyr)

# Load the test dataset
test <- read.table("./UCI HAR Dataset/test/X_test.txt")
test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
test_activity <- read.table("./UCI HAR Dataset/test/y_test.txt")

# Load the train dataset
train <- read.table("./UCI HAR Dataset/train/X_train.txt")
train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
train_activity <- read.table("./UCI HAR Dataset/train/y_train.txt")

# Load the activity labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

# Merge the the test and training set, without subject or activity information
joined_set <- rbind(test,train)

# Load the variable names file
var_names <- read.table("./UCI HAR Dataset/features.txt")

# Extract the variable names column
var_names <- as.vector(var_names[,2])

# Determine through logical indexing, the variable names corresponding to mean and std values
logical_var_names <- grepl("mean",var_names) | grepl("std",var_names)

# In the merged dataset, keep only the variables corresponding to TRUE in logical_var_names
reduced_set <- joined_set[,logical_var_names]

# Add a column with the subjects' id and another with the activities
tidy_set <- cbind(reduced_set,rbind(test_subject,train_subject),rbind(test_activity,train_activity))

# Add variable names to the dataset
var_names <- c(var_names[logical_var_names],"Subject","Activity")
names(tidy_set) <- var_names

# Replace the activities numbering with the actual labels
for (i in seq_along(tidy_set$"Activity")) {
    tidy_set$"Activity"[i] <- as.character(activity_labels[tidy_set$"Activity"[i],2])
}

# Data set with the average of each variable for each activity and each subject
tidy_dataset <- tidy_set %>% group_by(Activity,Subject) %>% summarise_each(funs(mean))

# Write the tidy data set to a file
write.table(tidy_dataset,file="tidy_dataset.txt",row.name=FALSE)