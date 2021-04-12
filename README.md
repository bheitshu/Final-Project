# Final-Project
HR Analytics: Job Change of Data Scientists



### Group Members:
Andra Lobo,
Brooke Heitshu,
Xikang Zhang

## Topic Selected

We sourced the “HR Analytics: Job Change of Data Scientist” from the website kaggle. This data set was originally sourced by a company who is active in Big Data and Data Science. This particular company offers courses and training internally to enhance their current employees skill sets. The company has collected data from all employees who participated in the training program and noticed some employees tend to seek new employment opportunities after completion. 
<a href="https://www.kaggle.com/arashnic/hr-analytics-job-change-of-data-scientists">HR Analytics: Job Change of Data Scientists | Kaggle</a>

## Reasons why we selected this topic 

-  Onboarding new employees is an expensive process, we need to increase employee retention to ultimately save money and keep talent. 
This analysis will provide employers with the tools they need to predict whether a future employee will stay with the company or use their training and seek other employment opportunities. Onboarding is an expensive process for any company especially when additional Data training programs are offered. This analysis will limit the possibility of hiring a short-term employee. (this is why we may have to create “bins” for the years employed /so we can define “short-term”)

-  They need to find out what makes their employees stay (I adjusted this question , I am not sure if we can measure happiness of employees)
Understanding which factors lead to employees staying at the company is crucial to determining what kind of person will seek other employment opportunities. 

-  They want to know what to look for in an “loyal” employee ^(this one might be answered already)
-  Do those who have less hours of experience in their field and are enrolled in the course have a greater chance of leaving the company?

## Questions we hope to answer

-  What is the likelihood of an employee staying once they complete their training?
-  How long will they stay for?
-  What are the demographics of loyal employees?
-  Is hiring a less qualified employee (based on education level and experience) more likely to stay than a higher education with 10+ years experience after training?


## Description of the source of data 

The dataset provides information such as demographics, education and experience. From here we are able to deep dive and understand what factors led an employee to stay with the company or seek employment elsewhere.
We used the csv file provided on the Kaggle website 

Data Description: 

![DataSource_Description](https://user-images.githubusercontent.com/72036895/111922841-e26a2500-8a61-11eb-8eb4-7bfcd19b3786.png)

Sample Data:

![Starter_Data](https://user-images.githubusercontent.com/72036895/111922896-29581a80-8a62-11eb-919b-afad1f9cbc25.png)


### The following steps were completed:
-  We removed the following columns:
   - City, Enrollee ID
-  We removed all rows with null values
-  We converted the categorical values to numerical values
-  We created and imported the cleaned_data.csv in a  PostgreSQL database

### GitHub Flow

<img width="827" alt="Screen Shot 2021-03-21 at 10 58 00 AM" src="https://user-images.githubusercontent.com/72036895/111913571-64dbf000-8a34-11eb-8cf8-e6ec72f6d1fe.png">


### ERD diagram: 

<img src="https://github.com/bheitshu/Final-Project/blob/main/images/ERD_2.png?raw=true" >

### SQL Joining tables:

<img src="https://github.com/bheitshu/Final-Project/blob/main/images/sql_join.png?raw=true" >

## Machine Learning Model

We have chosen the Random Forest classifier and deep learning models for this project. 
* Random Forest Classifier
<img width="496" alt="Screen Shot 2021-04-01 at 7 24 03 PM" src="https://user-images.githubusercontent.com/72036895/113522324-87f6bb80-956d-11eb-968f-05187347c534.png">

A random forest is a meta estimator that fits a number of decision tree classifiers on various sub-samples of the dataset and uses averaging to improve the predictive accuracy and control over-fitting.In addtion, it is very easy to measure the relative importance of each feature on the prediciton.As shown above, the most important feature is the city development index which is the crucial reason whether the employee would leave or not. We have got the accuracy score as high as 85% after feeding training data to our Random Forest classifier.

* Deep Learning Model

![deep_learning_model](https://github.com/bheitshu/Final-Project/blob/machine_learning_feature/images/deep_learning_model.PNG)

We have also tried the deep learning model with 80 neurons and 30 neurons in the first layer and second layer respectively with the activation function of Rectified Linear Unit. As for the output layer, the actication function is sigmoid. After compiling and fitting the training dataset to the model, we have achieved the accuracy scores as 82.5%.

## Data Features
<img src="https://github.com/bheitshu/Final-Project/blob/machine_learning_feature/images/cdi.PNG" >
We could tell that CDI(City Development Index)has a significant impact on whether people would leave or stay. With 0.9 CDI, people are more likely to stay in current work. On the other side, people want to find another job if the CDI is relative small.
<img src="https://github.com/bheitshu/Final-Project/blob/machine_learning_feature/images/yearsofexp.PNG" >
There is a significant amount of people are looking for another jobs if they have worked for about 5 years. The people who has more than 15 years of working experience are less likely to leave the current work.
<img src="https://github.com/bheitshu/Final-Project/blob/machine_learning_feature/images/yearsfromlastjob.PNG" >
There are about two times of people are willing to stay at the current work if they have already worked in the current work position for 5 years.


## Dashboard:

<a href="https://public.tableau.com/profile/andra8280#!/vizhome/Group2_Final/Final2" Target="_blank"> https://public.tableau.com/profile/andra8280#!/vizhome/Group2_Final/Final2</a>

We chose to use Tableau to create our dashboard.

We imported our cleaned data as well as the converted data used for our machine learning models.

The first diagram shows the importance of each of the categories from our data.  

City development index is the highest importance followed by # of Training hours and years of experience.

The graphs below show the distribution of whether employees have stayed or not stayed by the following:

•	Gender
•	Enrolled in University
•	Education Level
•	Company Size
•	Company Type
•	City Index 

The filter above the graphs can be used to show the # stayed, not stayed or both.


## Presentation

Click here to view our Google Slides presentation:
https://github.com/bheitshu/Final-Project/blob/51f6ae51542321df67131063376f6d1d2f414a1e/images/Final%20Presentation%20-%20Group%202.pdf

### Speaking Notes

### Brooke Heitshu
Slide 4 -

•Using these 12 key features- ordered in most important to least important factors in employment relocation. We can tell your STEM HR department if Data Scientists are going to stay or leave the company after completing compensating training.
• This helps to reduce the cost and time as well as the quality of training or planning the courses and categorization of candidates. 
• Information related to demographics, education, experience are in hands from candidates signup and enrollment.

Slide 5 -
• We will be able to tell your company if the likelihood of an employee staying once the compensating training is completed
• What are key features that retain employees
• Is hiring a less qualified employee more likely to stay after compensated training?

Slide 6 -
• Data Preprocessing, Data Analyzing, DataBase, Dashboard
• Data Cleaning, Machine Learning 




