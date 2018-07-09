# Code book for Coursera Getting and Cleaning Data Course Project

## Data
The `tidy_data.txt` data file has the information separated by spaces, it is a text file, it has the following variables.

### Variables

+ `subject`: integer that identifies a subject.
+ `activity`: it can be
  `WALKING`
  `WALKING_UPSTAIRS`
  `WALKING_DOWNSTAIRS`
  `SITTING`
  `STANDING`
  `LAYING`
+ measurements:                                           
  + `timeDomainBodyAccelerometerMeanX`
  + `timeDomainBodyAccelerometerMeanY`
  + `timeDomainBodyAccelerometerMeanZ`
  + `timeDomainBodyAccelerometerStandardDeviationX`
  + `timeDomainBodyAccelerometerStandardDeviationY`
  + `timeDomainBodyAccelerometerStandardDeviationZ`
  + `timeDomainGravityAccelerometerMeanX`
  + `timeDomainGravityAccelerometerMeanY`
  + `timeDomainGravityAccelerometerMeanZ`
  + `timeDomainGravityAccelerometerStandardDeviationX`
  + `timeDomainGravityAccelerometerStandardDeviationY`
  + `timeDomainGravityAccelerometerStandardDeviationZ`
  + `timeDomainBodyAccelerometerJerkMeanX`
  + `timeDomainBodyAccelerometerJerkMeanY`
  + `timeDomainBodyAccelerometerJerkMeanZ`
  + `timeDomainBodyAccelerometerJerkStandardDeviationX`
  + `timeDomainBodyAccelerometerJerkStandardDeviationY`
  + `timeDomainBodyAccelerometerJerkStandardDeviationZ`
  + `timeDomainBodyGyroscopeMeanX`
  + `timeDomainBodyGyroscopeMeanY`
  + `timeDomainBodyGyroscopeMeanZ`
  + `timeDomainBodyGyroscopeStandardDeviationX`
  + `timeDomainBodyGyroscopeStandardDeviationY`
  + `timeDomainBodyGyroscopeStandardDeviationZ`
  + `timeDomainBodyGyroscopeJerkMeanX`
  + `timeDomainBodyGyroscopeJerkMeanY`
  + `timeDomainBodyGyroscopeJerkMeanZ`
  + `timeDomainBodyGyroscopeJerkStandardDeviationX`
  + `timeDomainBodyGyroscopeJerkStandardDeviationY`
  + `timeDomainBodyGyroscopeJerkStandardDeviationZ`
  + `timeDomainBodyAccelerometerMagnitudeMean`
  + `timeDomainBodyAccelerometerMagnitudeStandardDeviation`
  + `timeDomainGravityAccelerometerMagnitudeMean`
  + `timeDomainGravityAccelerometerMagnitudeStandardDeviation`
  + `timeDomainBodyAccelerometerJerkMagnitudeMean`
  + `timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation`
  + `timeDomainBodyGyroscopeMagnitudeMean`
  + `timeDomainBodyGyroscopeMagnitudeStandardDeviation`
  + `timeDomainBodyGyroscopeJerkMagnitudeMean`
  + `timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation`
  + `frequencyDomainBodyAccelerometerMeanX`
  + `frequencyDomainBodyAccelerometerMeanY`
  + `frequencyDomainBodyAccelerometerMeanZ`
  + `frequencyDomainBodyAccelerometerStandardDeviationX`
  + `frequencyDomainBodyAccelerometerStandardDeviationY`
  + `frequencyDomainBodyAccelerometerStandardDeviationZ`
  + `frequencyDomainBodyAccelerometerMeanFrequencyX`
  + `frequencyDomainBodyAccelerometerMeanFrequencyY`
  + `frequencyDomainBodyAccelerometerMeanFrequencyZ`
  + `frequencyDomainBodyAccelerometerJerkMeanX`
  + `frequencyDomainBodyAccelerometerJerkMeanY`
  + `frequencyDomainBodyAccelerometerJerkMeanZ`
  + `frequencyDomainBodyAccelerometerJerkStandardDeviationX`
  + `frequencyDomainBodyAccelerometerJerkStandardDeviationY`
  + `frequencyDomainBodyAccelerometerJerkStandardDeviationZ`
  + `frequencyDomainBodyAccelerometerJerkMeanFrequencyX`
  + `frequencyDomainBodyAccelerometerJerkMeanFrequencyY`
  + `frequencyDomainBodyAccelerometerJerkMeanFrequencyZ`
  + `frequencyDomainBodyGyroscopeMeanX`
  + `frequencyDomainBodyGyroscopeMeanY`
  + `frequencyDomainBodyGyroscopeMeanZ`
  + `frequencyDomainBodyGyroscopeStandardDeviationX`
  + `frequencyDomainBodyGyroscopeStandardDeviationY`
  + `frequencyDomainBodyGyroscopeStandardDeviationZ`
  + `frequencyDomainBodyGyroscopeMeanFrequencyX`
  + `frequencyDomainBodyGyroscopeMeanFrequencyY`
  + `frequencyDomainBodyGyroscopeMeanFrequencyZ`
  + `frequencyDomainBodyAccelerometerMagnitudeMean`
  + `frequencyDomainBodyAccelerometerMagnitudeStandardDeviation`
  + `frequencyDomainBodyAccelerometerMagnitudeMeanFrequency`
  + `frequencyDomainBodyAccelerometerJerkMagnitudeMean`
  + `frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation`
  + `frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency`
  + `frequencyDomainBodyGyroscopeMagnitudeMean`
  + `frequencyDomainBodyGyroscopeMagnitudeStandardDeviation`
  + `frequencyDomainBodyGyroscopeMagnitudeMeanFrequency`
  + `frequencyDomainBodyGyroscopeJerkMagnitudeMean`
  + `frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation`
  + `frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency`

Acceleration measurements (variables containing Accelerometer) were taken in g's (9.81 m.s⁻²) and gyroscope measurements (variables containing Gyroscope) were taken in radians per second (rad.s⁻¹)
