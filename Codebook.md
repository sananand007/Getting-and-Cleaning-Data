#Course Project Codebook

##Original (raw) Data from UCI Machine Learning Repository

	Contains Human Activity Recognition database built from the recordings 
	of 30 subjects performing activities of daily living (ADL) while carrying 
	a waist-mounted smartphone with embedded inertial sensors.

	Original data collected from the smartphones accelerometer and gyroscope 
	3-axial raw signals, further processed using various signal processing techniques 
	resulting in a measurement vector with 561 features.
	
- source
- description

For detailed description of the original dataset, refer to README.txt and features_info.txt bundeled with the original data set zip archive. The original data set is split into training and test sets where each partition consists of three files that contain

- the measurements from the accelerometer and gyroscope
- the labels for activity
- the subject identifiers

#Tidy Data

	Contains aggregated mean values of all mean and standard deviation values from original data set grouped by activity and subject, resulting in a total of 180 records.

##Attribute Information:

For each record in the tidy data it is provided:

###Its activity label (one out of 6 different activities):

1. LAYING
2. SITTING
3. STANDING
4. WALKING
5. WALKING_DOWNSTAIR
6. WALKING_UPSTAIRS

	An identifier of the subject who carried out the experiment (30 different subjects, IDs ranging from {1,2,3,...,30})
	79 features with the
	Mean of Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
	Mean of Triaxial Angular velocity from the gyroscope.
	numerical value ranging in [-1,1]

#Variables Used in FinalData Df

	timeBodyAccelerometer-mean()-X
	timeBodyAccelerometer-mean()-Y
	timeBodyAccelerometer-mean()-Z
	timeBodyAccelerometer-std()-X
	timeBodyAccelerometer-std()-Y
	timeBodyAccelerometer-std()-Z
	timeGravityAccelerometer-mean()-X
	timeGravityAccelerometer-mean()-Y
	timeGravityAccelerometer-mean()-Z
	timeGravityAccelerometer-std()-X
	timeGravityAccelerometer-std()-Y
	timeGravityAccelerometer-std()-Z
	timeBodyAccelerometerJerk-mean()-X
	timeBodyAccelerometerJerk-mean()-Y
	timeBodyAccelerometerJerk-mean()-Z
	timeBodyAccelerometerJerk-std()-X
	timeBodyAccelerometerJerk-std()-Y
	timeBodyAccelerometerJerk-std()-Z
	timeBodyGyroscope-mean()-X
	timeBodyGyroscope-mean()-Y
	timeBodyGyroscope-mean()-Z
	timeBodyGyroscope-std()-X
	timeBodyGyroscope-std()-Y
	timeBodyGyroscope-std()-Z
	timeBodyGyroscopeJerk-mean()-X
	timeBodyGyroscopeJerk-mean()-Y
	timeBodyGyroscopeJerk-mean()-Z
	timeBodyGyroscopeJerk-std()-X
	timeBodyGyroscopeJerk-std()-Y
	timeBodyGyroscopeJerk-std()-Z
	timeBodyAccelerometerMagnitude-mean()
	timeBodyAccelerometerMagnitude-std()
	timeGravityAccelerometerMagnitude-mean()
	timeGravityAccelerometerMagnitude-std()
	timeBodyAccelerometerJerkMagnitude-mean()
	timeBodyAccelerometerJerkMagnitude-std()
	timeBodyGyroscopeMagnitude-mean()
	timeBodyGyroscopeMagnitude-std()
	timeBodyGyroscopeJerkMagnitude-mean()
	timeBodyGyroscopeJerkMagnitude-std()
	frequencyBodyAccelerometer-mean()-X
	frequencyBodyAccelerometer-mean()-Y
	frequencyBodyAccelerometer-mean()-Z
	frequencyBodyAccelerometer-std()-X
	frequencyBodyAccelerometer-std()-Y
	frequencyBodyAccelerometer-std()-Z
	frequencyBodyAccelerometerJerk-mean()-X
	frequencyBodyAccelerometerJerk-mean()-Y
	frequencyBodyAccelerometerJerk-mean()-Z
	frequencyBodyAccelerometerJerk-std()-X
	frequencyBodyAccelerometerJerk-std()-Y
	frequencyBodyAccelerometerJerk-std()-Z
	frequencyBodyGyroscope-mean()-X
	frequencyBodyGyroscope-mean()-Y
	frequencyBodyGyroscope-mean()-Z
	frequencyBodyGyroscope-std()-X
	frequencyBodyGyroscope-std()-Y
	frequencyBodyGyroscope-std()-Z
	frequencyBodyAccelerometerMagnitude-mean()
	frequencyBodyAccelerometerMagnitude-std()
	frequencyBodyAccelerometerJerkMagnitude-mean()
	frequencyBodyAccelerometerJerkMagnitude-std()
	frequencyBodyGyroscopeMagnitude-mean()
	frequencyBodyGyroscopeMagnitude-std()
	frequencyBodyGyroscopeJerkMagnitude-mean()
	frequencyBodyGyroscopeJerkMagnitude-std()
	subject
	activity
