To make usage of this script, the following steps are to be performed:

1. Download the source file (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and unzip it into your R working directory;
2. In your R working directory, rename the folder "UCI HAR Dataset" to "Dataset";
3. Copy "run_analysis.R" to your R working directory;
4. Run R, and input the following command:
   source("run_analysis.R")

The script will create two datasets (clean_dataset.txt & tidy_dataset.txt) in the "Dataset" folder of your R working directory. For more details on
the resulting datasets, please refer to Codebook.md.

Reference:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012