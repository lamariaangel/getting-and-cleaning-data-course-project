### packages
library(dplyr)

### getting data

info_url <-'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip' 

zipname <- 'UCI HAR Dataset.zip'

if(!file.exists(zipname)) download.file(info_url, zipname, mode = 'wb')

namepath <- 'UCI HAR Dataset'

if(!file.exists(namepath)) unzip(zipname)

### reading data

# read training data
training_subjects <- read.table(file.path(namepath, 'train', 'subject_train.txt'))
training_values <- read.table(file.path(namepath, 'train', 'X_train.txt'))
training_activity <- read.table(file.path(namepath, 'train', 'y_train.txt'))

# read test data
test_subjects <- read.table(file.path(namepath, 'test', 'subject_test.txt'))
test_values <- read.table(file.path(namepath, 'test', 'X_test.txt'))
test_activity <- read.table(file.path(namepath, 'test', 'y_test.txt'))

features <- read.table(file.path(namepath, 'features.txt'), as.is = TRUE)

activities <- read.table(file.path(namepath, 'activity_labels.txt'))

colnames(activities) <- c('id', 'label')

### 1. Merges the training and the test sets to create one data set

complete_activity <- bind_rows(bind_cols(training_subjects,training_values,training_activity),
          bind_cols(test_subjects,test_values,test_activity))

names(complete_activity)

colnames(complete_activity) <- c('subject', features[, 2], 'activity')

### 2. Extracts only the measurements on the mean and standard deviation for each measurement

measurements <- grepl('subject|activity|mean|std', colnames(complete_activity))

activity_measurements <- complete_activity[, measurements]

### 3. Uses descriptive activity names to name the activities in the data set

activity_measurements$activity <- factor(activity_measurements$activity, 
                                 levels = activities[, 1], 
                                 labels = activities[, 2])

### 4. Appropriately labels the data set with descriptive variable names

column_names <- colnames(activity_measurements)

column_names <- gsub('[\\(\\)-]', '', column_names)

column_names <- gsub('^f', 'frequencyDomain', column_names)

column_names <- gsub('BodyBody', 'Body', column_names)

column_names <- gsub('^t', 'timeDomain', column_names)

column_names <- gsub('Acc', 'Accelerometer', column_names)

column_names <- gsub('Gyro', 'Gyroscope', column_names)

column_names <- gsub('Freq', 'Frequency', column_names)

column_names <- gsub('Mag', 'Magnitude', column_names)

column_names <- gsub('mean', 'Mean', column_names)

column_names <- gsub('std', 'StandardDeviation', column_names)

column_names

#changes names

colnames(activity_measurements) <- column_names

### 5. From the data set in step 4, creates a second, 
### independent tidy data set with the average of 
### each variable for each activity and each subject.

activity_subject <- activity_measurements %>% 
    group_by(subject, activity) %>%
    summarise_each(funs(mean))

write.table(activity_subject, 'tidy_data.txt', row.names = FALSE, 
            quote = FALSE)
