variables <- read.table("features.txt")

activities <- read.table("activity_labels.txt")
names(activities) <- c("activity_id", "activity_label")

train <- read.table("train/X_train.txt")
strain <- read.table("train/subject_train.txt")
actTrain <- read.table("train/y_train.txt")
train <- mutate(train, id = strain[,1])
train <- mutate(train, activity = actTrain[,1])
train <- merge(train, activities, by.x = "activity", by.y = "activity_id", all = TRUE)
train <- train[-1]

test <- read.table("test/X_test.txt")
stest <- read.table("test/subject_test.txt")
actTest <- read.table("test/y_test.txt")
test <- mutate(test, id = stest[,1])
test <- mutate(test, activity = actTest[,1])
test <- merge(test, activities, by.x = "activity", by.y = "activity_id", all = TRUE)
test <- test[-1]

activity <- rbind(train, test)

measures <- c(grep("*-std()*", variables[,2]), grep("*-mean()*", variables[,2]))
activity <- activity[c(measures, 562, 563)]
names(activity) <- c(as.character(variables[measures, 2]), "Subject ID", "Activity")

write.table(activity, "HumanActivityDataset.txt", row.name=FALSE)



s <- melt(activity, id=c("Subject ID", "Activity"))
dcast("Subject ID" + variable ~ Activity, data = s, fun = mean)
