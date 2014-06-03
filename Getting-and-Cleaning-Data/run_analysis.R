# Read and combine data

X_train <- read.table("./Dataset/train/X_train.txt")
X_test <- read.table("./Dataset/test/X_test.txt")
X <- rbind(X_train, X_test)

subject_train <- read.table("./Dataset/train/subject_train.txt")
subject_test <- read.table("./Dataset/test/subject_test.txt")
subject <- rbind(subject_train, subject_test)

y_train <- read.table("./Dataset/train/y_train.txt")
y_test <- read.table("./Dataset/test/y_test.txt")
y <- rbind(y_train, y_test)

# Extract measurements for mean and std values

features <- read.table("./Dataset/features.txt")
useful_features <- grep("-mean\\()|-std\\()", features[,2])
X <- X[, useful_features]
names(X) <- tolower(features[useful_features, 2])

# Name the activities

activities <- read.table("./Dataset/activity_labels.txt")
y[,1] <- tolower(activities[y[,1], 2])

# Label the clean dataset

clean <- cbind(subject, y, X)
names(clean)[1:2] <- c('subjects', 'activities')
write.table(clean, "./Dataset/clean_dataset.txt")

# Create the tidy dataset with averaging

n <- dim(clean)[2]
tidy <- aggregate(clean[,3:n],list(clean[,2],clean[,1]),mean)
tmp <- tidy[,1]
tidy[,1] <- tidy[,2]
tidy[,2] <- tmp
names(tidy)[1:2] <- c('subjects', 'activities')
write.table(tidy, "./Dataset/tidy_dataset.txt")