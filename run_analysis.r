##STEP 1: download data and unzip the file
library("dplyr")
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("UCI HAR Dataset.zip")){
        download.file(fileUrl,"UCI HAR Dataset.zip")
}
if(!file.exists("UCI HAR Dataset")){
        unzip("UCI HAR Dataset.zip")
}

##STEP 2: read datasets
subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")
X_train<-read.table("./UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("./UCI HAR Dataset/train/y_train.txt")
subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
X_test<-read.table("./UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("./UCI HAR Dataset/test/y_test.txt")

##STEP 3: merge datasets
training_set<-cbind(subject_train,y_train,X_train)
test_set<-cbind(subject_test,y_test,X_test)
full_activity<-rbind(training_set,test_set)

##step 4: rename column names
features <- read.table("./UCI HAR Dataset/features.txt")
ft<-as.character(features[,2])
names(full_activity)<-c("Subject","Activity",ft)

##STEP 5: Extracts only the measurements on the mean and standard deviation for each measurement
ext.group<-grepl("mean|std",colnames(full_activity))
activity<-cbind(full_activity[,c(1,2)], full_activity[,ext.group])

##STEP 6: Name the activities in the data set
activity$Activity<-replace(activity$Activity,activity$Activity==1,"WALKING")
activity$Activity<-replace(activity$Activity,activity$Activity==2,"WALKING_UPSTAIRS")
activity$Activity<-replace(activity$Activity,activity$Activity==3,"WALKING_DOWNSTAIRS")
activity$Activity<-replace(activity$Activity,activity$Activity==4,"SITTING")
activity$Activity<-replace(activity$Activity,activity$Activity==5,"STANDING")
activity$Activity<-replace(activity$Activity,activity$Activity==6,"LAYING")

##STEP 7: Label the data set with descriptive variable names
names(activity)=gsub("^t","TimeDomain",names(activity))
names(activity)=gsub("^f","FrequencyDomain",names(activity))
names(activity)=gsub("mean","Mean",names(activity))
names(activity)=gsub("std","StandardDeviation",names(activity))
names(activity)=gsub("Freq","Frequency",names(activity))
names(activity)=gsub("Acc","Accelerometer",names(activity))
names(activity)=gsub("Gyro","Gyroscope",names(activity))
names(activity)=gsub("Mag","Magnitude",names(activity))

##STEP 8: Creates a tidy data set with the average of each variable for each activity and each subject
average.ds<-aggregate(activity[,3:ncol(activity)],list(Subject=activity$Subject,Activity=activity$Activity),mean)
tidy.data<-average.ds[order(average.ds$Subject,average.ds$Activity),]

##STEP 9:output tidy data set
write.table(tidy.data,file="TidyData.txt", row.names = FALSE)