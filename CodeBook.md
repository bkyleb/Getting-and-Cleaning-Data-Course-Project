## CodeBook for Getting and Cleaning Data Course Project

### Introduction

This code book summarizes the variables in “*TidyData.txt*” calculated from the original datasets.

### Original Data Sets
The original experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 

The original data sets can be downloaded from the link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

### Variables

**1. Identifiers**

There is a group of 30 volunteers performed 6 activities, which this data set uses as data identifiers.

   + Subject: 30 volunteers are labeled from 1 to 30. 
   + Activity: 6 activities are labeled from 1 to 6, presenting subject Walking, Walking upstairs, Walking downstairs, Sitting, Standing, Laying.
   

**2. Features**

There are total of 79 measurements with average estimated mean value and standard deviation for each subject and activity. Data come from the accelerometer and gyroscope 3-axial raw signals represented by XYZ, and time or frequency domain signals.

   + TimeDomainBodyAccelerometer-Mean()-X                                      
   + TimeDomainBodyAccelerometer-Mean()-Y                                      
   + TimeDomainBodyAccelerometer-Mean()-Z                                      
   + TimeDomainBodyAccelerometer-StandardDeviation()-X                         
   + TimeDomainBodyAccelerometer-StandardDeviation()-Y                         
   + TimeDomainBodyAccelerometer-StandardDeviation()-Z                         
   + TimeDomainGravityAccelerometer-Mean()-X                                   
   + TimeDomainGravityAccelerometer-Mean()-Y                                   
   + TimeDomainGravityAccelerometer-Mean()-Z                                   
   + TimeDomainGravityAccelerometer-StandardDeviation()-X                      
   + TimeDomainGravityAccelerometer-StandardDeviation()-Y                      
   + TimeDomainGravityAccelerometer-StandardDeviation()-Z                      
   + TimeDomainBodyAccelerometerJerk-Mean()-X                                  
   + TimeDomainBodyAccelerometerJerk-Mean()-Y                                  
   + TimeDomainBodyAccelerometerJerk-Mean()-Z                                  
   + TimeDomainBodyAccelerometerJerk-StandardDeviation()-X                     
   + TimeDomainBodyAccelerometerJerk-StandardDeviation()-Y                     
   + TimeDomainBodyAccelerometerJerk-StandardDeviation()-Z                     
   + TimeDomainBodyGyroscope-Mean()-X                                          
   + TimeDomainBodyGyroscope-Mean()-Y                                          
   + TimeDomainBodyGyroscope-Mean()-Z                                          
   + TimeDomainBodyGyroscope-StandardDeviation()-X                             
   + TimeDomainBodyGyroscope-StandardDeviation()-Y                             
   + TimeDomainBodyGyroscope-StandardDeviation()-Z                             
   + TimeDomainBodyGyroscopeJerk-Mean()-X                                      
   + TimeDomainBodyGyroscopeJerk-Mean()-Y                                      
   + TimeDomainBodyGyroscopeJerk-Mean()-Z                                      
   + TimeDomainBodyGyroscopeJerk-StandardDeviation()-X                         
   + TimeDomainBodyGyroscopeJerk-StandardDeviation()-Y                         
   + TimeDomainBodyGyroscopeJerk-StandardDeviation()-Z                         
   + TimeDomainBodyAccelerometerMagnitude-Mean()                               
   + TimeDomainBodyAccelerometerMagnitude-StandardDeviation()                  
   + TimeDomainGravityAccelerometerMagnitude-Mean()                            
   + TimeDomainGravityAccelerometerMagnitude-StandardDeviation()               
   + TimeDomainBodyAccelerometerJerkMagnitude-Mean()                           
   + TimeDomainBodyAccelerometerJerkMagnitude-StandardDeviation()              
   + TimeDomainBodyGyroscopeMagnitude-Mean()                                   
   + TimeDomainBodyGyroscopeMagnitude-StandardDeviation()                      
   + TimeDomainBodyGyroscopeJerkMagnitude-Mean()                               
   + TimeDomainBodyGyroscopeJerkMagnitude-StandardDeviation()                  
   + FrequencyuencyDomainBodyAccelerometer-Mean()-X                            
   + FrequencyuencyDomainBodyAccelerometer-Mean()-Y                            
   + FrequencyuencyDomainBodyAccelerometer-Mean()-Z                            
   + FrequencyuencyDomainBodyAccelerometer-StandardDeviation()-X               
   + FrequencyuencyDomainBodyAccelerometer-StandardDeviation()-Y               
   + FrequencyuencyDomainBodyAccelerometer-StandardDeviation()-Z               
   + FrequencyuencyDomainBodyAccelerometer-MeanFrequency()-X                   
   + FrequencyuencyDomainBodyAccelerometer-MeanFrequency()-Y                   
   + FrequencyuencyDomainBodyAccelerometer-MeanFrequency()-Z                   
   + FrequencyuencyDomainBodyAccelerometerJerk-Mean()-X                        
   + FrequencyuencyDomainBodyAccelerometerJerk-Mean()-Y                        
   + FrequencyuencyDomainBodyAccelerometerJerk-Mean()-Z                        
   + FrequencyuencyDomainBodyAccelerometerJerk-StandardDeviation()-X           
   + FrequencyuencyDomainBodyAccelerometerJerk-StandardDeviation()-Y           
   + FrequencyuencyDomainBodyAccelerometerJerk-StandardDeviation()-Z           
   + FrequencyuencyDomainBodyAccelerometerJerk-MeanFrequency()-X               
   + FrequencyuencyDomainBodyAccelerometerJerk-MeanFrequency()-Y               
   + FrequencyuencyDomainBodyAccelerometerJerk-MeanFrequency()-Z               
   + FrequencyuencyDomainBodyGyroscope-Mean()-X                                
   + FrequencyuencyDomainBodyGyroscope-Mean()-Y                                
   + FrequencyuencyDomainBodyGyroscope-Mean()-Z                                
   + FrequencyuencyDomainBodyGyroscope-StandardDeviation()-X                   
   + FrequencyuencyDomainBodyGyroscope-StandardDeviation()-Y                   
   + FrequencyuencyDomainBodyGyroscope-StandardDeviation()-Z                   
   + FrequencyuencyDomainBodyGyroscope-MeanFrequency()-X                       
   + FrequencyuencyDomainBodyGyroscope-MeanFrequency()-Y                       
   + FrequencyuencyDomainBodyGyroscope-MeanFrequency()-Z                       
   + FrequencyuencyDomainBodyAccelerometerMagnitude-Mean()                     
   + FrequencyuencyDomainBodyAccelerometerMagnitude-StandardDeviation()        
   + FrequencyuencyDomainBodyAccelerometerMagnitude-MeanFrequency()            
   + FrequencyuencyDomainBodyBodyAccelerometerJerkMagnitude-Mean()             
   + FrequencyuencyDomainBodyBodyAccelerometerJerkMagnitude-StandardDeviation()
   + FrequencyuencyDomainBodyBodyAccelerometerJerkMagnitude-MeanFrequency()    
   + FrequencyuencyDomainBodyBodyGyroscopeMagnitude-Mean()                     
   + FrequencyuencyDomainBodyBodyGyroscopeMagnitude-StandardDeviation()        
   + FrequencyuencyDomainBodyBodyGyroscopeMagnitude-MeanFrequency()            
   + FrequencyuencyDomainBodyBodyGyroscopeJerkMagnitude-Mean()                 
   + FrequencyuencyDomainBodyBodyGyroscopeJerkMagnitude-StandardDeviation()    
   + FrequencyuencyDomainBodyBodyGyroscopeJerkMagnitude-MeanFrequency()   

### Transformation

The following steps are taken in order to obtain the "*TidyData.txt*" from the original raw data

1. Download origianl data sets. 
2. Load and merge the data sets to output one data sets including all the measurements data for 30 subjects labeled by subject and activity category.
3. Rename the columns with corresponding feature names.
4. Extract only Mean value and Standard deviation measurements.
5. Replace the activity code (1 to 6) with descriptive activity names.
6. Clearly relable the column names with more specific and descriptive variable names. For example, *t* is replaced by *time domain* and *Acc* is replaced by *Accelerometer*.
7. A second tidy data set is created by computing average value for each subject and activity by spliting the data by identifiers.
