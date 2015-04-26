==================================================================
Getting and Cleaning Data project Dataset
Version 1.0
==================================================================
Andres Glavina.
==================================================================

This document describes how the script works and also includes the code book describing the variables.

The script does , step by step, the requirements of the project.
It assumes that the Samsung data is already in your working directory.
It also needs the dplyr package and its dependencies installed.

For the step 2(Extracts only the measurements on the Mean and standard deviation for each measurement) 
the data only includes fit raw Mean and standard deviation from the Samsung data set variables. What include or not was open to interpretation, so I decided that it was only required the raw data.

The descriptive names are all mentioned in the data dictionary below.
The result file is also included in this folder("project_results.txt") 
It can be generated runnning the script "run_Analysis.R".


DATA DICTIONARY 

activity

	Possible values: 
		WALKING
		WALKING_UPSTAIRS
		WALKING_DOWNSTAIRS
		SITTING
		STANDING
		LAYING

subject

	data of 30 subjects is included, they are labeled with integers from 1 to 30

	
	
	
*** All of the following variables average of each variable for each activity and each subject.

timeBodyAccelerometerMeanAxisX

time domain body linear accelerometer Mean of Axis X

timeBodyAccelerometerMeanAxisY

time domain body linear accelerometer Mean of Axis Y

timeBodyAccelerometerMeanAxisZ

time domain body linear accelerometer Mean of Axis Z

timeBodyAccelerometerStandardDeviationAxisX

time domain body linear accelerometer Standard Deviation of Axis X

timeBodyAccelerometerStandardDeviationAxisY

time domain body linear accelerometer Standard Deviation of Axis Y

timeBodyAccelerometerStandardDeviationAxisZ

time domain body linear accelerometer Standard Deviation of Axis Z

timeGravityAccelerometerMeanAxisX

time domain gravity accelerometer Mean of Axis X

timeGravityAccelerometerMeanAxisY

time domain gravity accelerometer Mean of Axis Y

timeGravityAccelerometerMeanAxisZ

time domain gravity accelerometer Mean of Axis Z

timeGravityAccelerometerStandardDeviationAxisX

time domain gravity accelerometer Standard Deviation of Axis X

timeGravityAccelerometerStandardDeviationAxisY

time domain gravity accelerometer Standard Deviation of Axis Y

timeGravityAccelerometerStandardDeviationAxisZ

time domain gravity accelerometer Standard Deviation of Axis Z

timeBodyAccelerometerJerkSignalMeanAxisX

time domain body accelerometer Jerk Signal Mean of Axis X

timeBodyAccelerometerJerkSignalMeanAxisY

time domain body accelerometer Jerk Signal Mean of Axis Y

timeBodyAccelerometerJerkSignalMeanAxisZ

time domain body accelerometer Jerk Signal Mean of Axis Z

timeBodyAccelerometerJerkSignalStandardDeviationAxisX

time domain body accelerometer Jerk Signal Standard Deviation of Axis X

timeBodyAccelerometerJerkSignalStandardDeviationAxisY

time domain body accelerometer Jerk Signal Standard Deviation of Axis Y

timeBodyAccelerometerJerkSignalStandardDeviationAxisZ

time domain body accelerometer Jerk Signal Standard Deviation of Axis Z

timeBodyGyroscopeMeanAxisX

time domain body linear gyroscope Mean of Axis X

timeBodyGyroscopeMeanAxisY

time domain body linear gyroscope Mean of Axis Y

timeBodyGyroscopeMeanAxisZ

time domain body linear gyroscope Mean of Axis Z

timeBodyGyroscopeStandardDeviationAxisX

time domain body linear gyroscope Standard Deviation of Axis X

timeBodyGyroscopeStandardDeviationAxisY

time domain body linear gyroscope Standard Deviation of Axis Y

timeBodyGyroscopeStandardDeviationAxisZ

time domain body linear gyroscope Standard Deviation of Axis Z

timeBodyGyroscopeJerkSignalMeanAxisX

time domain body linear gyroscope Jerk Signal Mean of Axis X

timeBodyGyroscopeJerkSignalMeanAxisY

time domain body linear gyroscope Jerk Signal Mean of Axis Y

timeBodyGyroscopeJerkSignalMeanAxisZ

time domain body linear gyroscope Jerk Signal Mean of Axis Z

timeBodyGyroscopeJerkSignalStandardDeviationAxisX

time domain body linear gyroscope Jerk Signal Standard Deviation of Axis X

timeBodyGyroscopeJerkSignalStandardDeviationAxisY

time domain body linear gyroscope Jerk Signal Standard Deviation of Axis Y

timeBodyGyroscopeJerkSignalStandardDeviationAxisZ

time domain body linear gyroscope Jerk Signal Standard Deviation of Axis Z

timeBodyAccelerometer MagnitudeMean 

timeBodyAccelerometer MagnitudeMean 

timeBodyAccelerometerMagnitudeStandardDeviation

timeBodyAccelerometerMagnitudeStandardDeviation

timeGravityAccelerometer MagnitudeMean 

timeGravityAccelerometer MagnitudeMean 

timeGravityAccelerometerMagnitudeStandardDeviation

time Gravity Accelerometer Magnitude Standard Deviation

timeBodyAccelerometerJerkSignal MagnitudeMean 

time domain body Accelerometer Jerk Signal Magnitude Mean 

timeBodyAccelerometerJerkSignalMagnitudeStandardDeviation

time domain body linear Accelerometer Jerk Signal Magnitude Standard Deviation

timeBodyGyroscope MagnitudeMean 

time domain body linear Gyroscope Magnitude Mean 

timeBodyGyroscopeMagnitudeStandardDeviation

time domain body linear Gyroscope Magnitude Standard Deviation

timeBodyGyroscopeJerkSignalMagnitudeMean 

time domain body linear Gyroscope Jerk Signal Magnitude Mean

timeBodyGyroscopeJerkSignalMagnitudeStandardDeviation

time domain body linear Gyroscope Jerk Signal Magnitude Standard Deviation

frequencyBodyAccelerometerMeanAxisX

frequency body linear accelerometer Mean of Axis X

frequencyBodyAccelerometerMeanAxisY

frequency body linear accelerometer Mean of Axis Y

frequencyBodyAccelerometerMeanAxisZ

frequency body linear accelerometer Mean of Axis Z

frequencyBodyAccelerometerStandardDeviationAxisX

frequency body linear accelerometer Standard Deviation of Axis X

frequencyBodyAccelerometerStandardDeviationAxisY

frequency body linear accelerometer Standard Deviation of Axis Y

frequencyBodyAccelerometerStandardDeviationAxisZ

frequency body linear accelerometer Standard Deviation of Axis Z

frequencyBodyAccelerometerJerkSignalMeanAxisX

frequency body accelerometer Jerk Signal Mean of Axis X

frequencyBodyAccelerometerJerkSignalMeanAxisY

frequency body accelerometer Jerk Signal Mean of Axis Y

frequencyBodyAccelerometerJerkSignalMeanAxisZ

frequency body accelerometer Jerk Signal Mean of Axis Z

frequencyBodyAccelerometerJerkSignalStandardDeviationAxisX

frequency body accelerometer Jerk Signal Standard Deviation of Axis X

frequencyBodyAccelerometerJerkSignalStandardDeviationAxisY

frequency body accelerometer Jerk Signal Standard Deviation of Axis Y

frequencyBodyAccelerometerJerkSignalStandardDeviationAxisZ

frequency body accelerometer Jerk Signal Standard Deviation of Axis Z

frequencyBodyGyroscopeMeanAxisX

frequency body linear gyroscope Mean of Axis X

frequencyBodyGyroscopeMeanAxisY

frequency body linear gyroscope Mean of Axis Y

frequencyBodyGyroscopeMeanAxisZ

frequency body linear gyroscope Mean of Axis Z

frequencyBodyGyroscopeStandardDeviationAxisX

frequency body linear gyroscope Standard Deviation of Axis X

frequencyBodyGyroscopeStandardDeviationAxisY

frequency body linear gyroscope Standard Deviation of Axis Y

frequencyBodyGyroscopeStandardDeviationAxisZ

frequency body linear gyroscope Standard Deviation of Axis Z

frequencyBodyAccelerometer MagnitudeMean 

frequency of body linear Accelerometer Magnitude Mean 

frequencyBodyAccelerometerMagnitudeStandardDeviation

frequency of body linear Accelerometer Magnitude Standard Deviation

frequencyBodyBodyAccelerometerJerkSignal MagnitudeMean 

frequency of body linear Accelerometer Jerk Signal Magnitude Mean 

frequencyBodyBodyAccelerometerJerkSignalMagnitudeStandardDeviation

frequency of body linear Accelerometer Jerk Signal Magnitude Standard Deviation

frequencyBodyBodyGyroscopeMagnitudeMean 

frequency of body linear Gyroscope Magnitude Mean 
frequencyBodyBodyGyroscopeMagnitudeStandardDeviation

frequency of body linear Gyroscope Magnitude Standard Deviation

frequencyBodyBodyGyroscopeJerkSignalMagnitudeMean 

frequency of body linear Gyroscope Jerk Signal Magnitude Mean 

frequencyBodyBodyGyroscopeJerkSignalMagnitudeStandardDeviation

frequency of body linear Gyroscope Jerk Signal Magnitude Standard Deviation

