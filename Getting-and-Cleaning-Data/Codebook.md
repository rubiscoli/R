Source of the original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The resulting datasets (clean_dataset.txt & tidy_dataset.txt) are based on the attached R script (run_analysis.R). Both training and test sets are merged. Only variables on the mean and standard deviation for each measurement are extracted and labeled. The "activities" field now shows the activity names ("laying, sitting, standing, walking, walking_downstairs, walking_upstairs", instead of the numeric index in the orginal dataset). In tidy_dataset.txt, each variable is averaged for each subject and each activity.

The clean_dataset.txt file is a 10299*68 table. The tidy_dataset.txt file is a 180*68 table. Both tables have the following variables:



subjects

activities

tbodyacc-mean()-x

tbodyacc-mean()-y

tbodyacc-mean()-z

tbodyacc-std()-x

tbodyacc-std()-y

tbodyacc-std()-z

tgravityacc-mean()-x

tgravityacc-mean()-y

tgravityacc-mean()-z

tgravityacc-std()-x

tgravityacc-std()-y

tgravityacc-std()-z

tbodyaccjerk-mean()-x

tbodyaccjerk-mean()-y

tbodyaccjerk-mean()-z

tbodyaccjerk-std()-x

tbodyaccjerk-std()-y

tbodyaccjerk-std()-z

tbodygyro-mean()-x

tbodygyro-mean()-y

tbodygyro-mean()-z

tbodygyro-std()-x

tbodygyro-std()-y

tbodygyro-std()-z

tbodygyrojerk-mean()-x

tbodygyrojerk-mean()-y

tbodygyrojerk-mean()-z

tbodygyrojerk-std()-x

tbodygyrojerk-std()-y

tbodygyrojerk-std()-z

tbodyaccmag-mean()

tbodyaccmag-std()

tgravityaccmag-mean()

tgravityaccmag-std()

tbodyaccjerkmag-mean()

tbodyaccjerkmag-std()

tbodygyromag-mean()

tbodygyromag-std()

tbodygyrojerkmag-mean()

tbodygyrojerkmag-std()

fbodyacc-mean()-x

fbodyacc-mean()-y

fbodyacc-mean()-z

fbodyacc-std()-x

fbodyacc-std()-y

fbodyacc-std()-z

fbodyaccjerk-mean()-x

fbodyaccjerk-mean()-y

fbodyaccjerk-mean()-z

fbodyaccjerk-std()-x

fbodyaccjerk-std()-y

fbodyaccjerk-std()-z

fbodygyro-mean()-x

fbodygyro-mean()-y

fbodygyro-mean()-z

fbodygyro-std()-x

fbodygyro-std()-y

fbodygyro-std()-z

fbodyaccmag-mean()

fbodyaccmag-std()

fbodybodyaccjerkmag-mean()

fbodybodyaccjerkmag-std()

fbodybodygyromag-mean()

fbodybodygyromag-std()

fbodybodygyrojerkmag-mean()

fbodybodygyrojerkmag-std()



The first variable "subjects" indicate the subject (with an ID from 1 to 30). The second variable "activities" indicate the specific activity. The following 66 variables are measurements. Variables with "mean()" indicate mean values of measurements, and variables with "std()" indicate standard deviation of measurements. Variables with "-x/y/z" indicate 3-axial signals in the X, Y and Z directions, respectively.
