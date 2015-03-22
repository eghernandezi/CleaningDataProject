Process to clean Human Activity Recognition Using Smartphones Dataset 
===============

The purpose of this codebook is provide the explanation to the process and obtain the tidy data set for the Human Activity Recognition Using Smartphones Dataset.

The document contains three main sections as follows:
* Variables: The meaning of each variable is described in this section.
* Data: The final available data sets are described in here.
* Transformations: In this section is possible to find all the steps followed to generate the tidy data set from the original one.

## Variables
* features: Data set containing the list of all features.
* activities: Data set that links the class labels with their activity name.
* train: Training data set.
* test: Test data set.
* activityMeasurement: Final tidy data set containing all the standard deviation and mean measurements for training and test. 
* measureLabels: Measures label.
* activitySummary: Data set containing the grouped summary by subject and activity with mean for every feature.

## Data
* activityMeasurement: Final tidy data set. It contains the test and training measures with their correspondent subject and activity.
    + Subject: Subject ID who performed the activity. It ranges from 1 to 30.
    + Activity: Activity name perfomed by the subject.
    + Measure with postfix std(): Standard deviation measure.
    + Measure with postfix mean(): Mean measure.
* activitySummary: Data set containing every subject with activity measure mean.
    + Subject: Subject ID who performed the activity. It ranges from 1 to 30.
    + Activity: Activity name perfomed by the subject.
    + Measure with postfix std(): Standard deviation measure.
    + Measure with postfix mean(): Mean measure.	

## Transformations
1. The features are loaded from "features.txt" file.
2. The activity labels are loaded from "activity_labels.txt" file. The names for the columns are asigned.
3. The train data set is loaded. It is necessary to join the set, subjects and activities.
4. The test data set is loaded. It is necessary to join the set, subjects and activities.
5. The test and train data are are bind in the activityMeasurement data set.
6. The standard deviation and mean columns are located. Only the Subject ID, Activity Label and the located columns are kept.
7. The column names are properly set.
8. The "HumanActivityDataset.txt" file is created.
9. The summary by subject and activity with the mean measures is created in the actSummary data set.

