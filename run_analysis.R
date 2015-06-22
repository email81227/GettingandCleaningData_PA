## basic label
file_path <- "./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset"
features <- read.table(paste(file_path, "features.txt", sep = "/"), head = F)


##  test loading
file_path <- "./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test"

subject_test <- read.table(paste(file_path, "subject_test.txt", sep = "/"), head = F)
X_test <- read.table(paste(file_path, "X_test.txt", sep = "/"), head = F)
y_test <- read.table(paste(file_path, "y_test.txt", sep = "/"), head = F)

names(subject_test) <- "volunteer_num"
names(X_test) <- features[, 2]
names(y_test) <- "activity"


file_path <- "./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals"
body_acc_x_test <- read.table(paste(file_path, "body_acc_x_test.txt", sep = "/"))
body_acc_y_test <- read.table(paste(file_path, "body_acc_y_test.txt", sep = "/"))
body_acc_z_test <- read.table(paste(file_path, "body_acc_z_test.txt", sep = "/"))
  
body_gyro_x_test <- read.table(paste(file_path, "body_gyro_x_test.txt", sep = "/"))
body_gyro_y_test <- read.table(paste(file_path, "body_gyro_y_test.txt", sep = "/"))
body_gyro_z_test <- read.table(paste(file_path, "body_gyro_z_test.txt", sep = "/"))
  
total_acc_x_test <- read.table(paste(file_path, "total_acc_x_test.txt", sep = "/"))
total_acc_y_test <- read.table(paste(file_path, "total_acc_y_test.txt", sep = "/"))
total_acc_z_test <- read.table(paste(file_path, "total_acc_z_test.txt", sep = "/"))

##  train loading
file_path <- "./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train"

subject_train <- read.table(paste(file_path, "subject_train.txt", sep = "/"), head = F)
X_train <- read.table(paste(file_path, "X_train.txt", sep = "/"), head = F)
y_train <- read.table(paste(file_path, "y_train.txt", sep = "/"), head = F)

names(subject_train) <- "volunteer_num"
names(X_train) <- features[, 2]
names(y_train) <- "activity"


file_path <- "./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals"
body_acc_x_train <- read.table(paste(file_path, "body_acc_x_train.txt", sep = "/"))
body_acc_y_train <- read.table(paste(file_path, "body_acc_y_train.txt", sep = "/"))
body_acc_z_train <- read.table(paste(file_path, "body_acc_z_train.txt", sep = "/"))

body_gyro_x_train <- read.table(paste(file_path, "body_gyro_x_train.txt", sep = "/"))
body_gyro_y_train <- read.table(paste(file_path, "body_gyro_y_train.txt", sep = "/"))
body_gyro_z_train <- read.table(paste(file_path, "body_gyro_z_train.txt", sep = "/"))

total_acc_x_train <- read.table(paste(file_path, "total_acc_x_train.txt", sep = "/"))
total_acc_y_train <- read.table(paste(file_path, "total_acc_y_train.txt", sep = "/"))
total_acc_z_train <- read.table(paste(file_path, "total_acc_z_train.txt", sep = "/"))

##  merging data
X_data <- rbind(X_test, X_train)
y_data <- rbind(y_test, y_train)
subjectdata <- rbind(subject_test, subject_train)
data <- cbind(subjectdata, X_data, y_data)

write.table(data, file = "data_set.txt", row.name = F)
stat_scr <- summary(data)

