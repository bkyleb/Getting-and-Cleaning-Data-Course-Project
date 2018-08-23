
## Getting and Cleaning Data Course Project

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually.

This course project require clean and merge multiple data sets from origianl raw data, and creat a second tidy data set with the average of each variable for each activity and each subject. The R script run_analysis.R runs the following to output the requested *TidyData.txt*

1. Download and unzip origianl data sets. 
2. Load and merge the data sets to output one data sets including all the measurements data for 30 subjects labeled by subject and activity category.
3. Rename the columns with corresponding feature names.
4. Extract only Mean value and Standard deviation measurements.
5. Replace the activity code (1 to 6) with descriptive activity names.
6. Clearly relable the column names with more specific and descriptive variable names. For example, *t* is replaced by *time domain* and *Acc* is replaced by *Accelerometer*.
7. A second tidy data set is created by computing average value for each subject and activity by spliting the data by identifiers.  
  
Output is data file "TidyData.txt", showing the average of 79 variables for each subject and activity.
