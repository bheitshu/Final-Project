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

A random forest is a meta estimator that fits a number of decision tree classifiers on various sub-samples of the dataset and uses averaging to improve the predictive accuracy and control over-fitting.In addtion, it is very easy to measure the relative importance of each feature on the prediciton.As shown above, the most important feature is the city development index which is the crucial reason whether the employee would leave or not. We have got the accuracy score as high as 87% after feeding training data to our Random Forest classifier.

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

-  Gender
-  Enrolled in University
-  Education Level
-  Company Size
-  Company Type
-  City Index 

The filter above the graphs can be used to show the # stayed, not stayed or both.


## Presentation

Click here to view our Google Slides presentation:
https://github.com/bheitshu/Final-Project/blob/18763934928006f4a2cc7a3a70d607458cf0b407/images/Final%20Presentation%20-%20Group%202.pdf

### Speaking Notes

### Brooke
Slide 1
-Introduce topic
Our group decide to work with an open source data set on Kaggle to analyze job changes within data scientist roles
Slide 2
Our group members include Andra, Myself Brooke, and Axel
Slide 3
-skip
Slide 4
These 12 key features within our data set- ordered in most important to least important factors in employment relocation. As you can see the number 1 factor is the city development index, 2nd is training hours and 3rd is company size. With this information we are able to indicate to a HR department if Data Scientists are going to stay or leave the company after completing compensating training offered by the company
Information related to demographics , education and experience are available in this data set
We discovered through our data set 83% of employees stay after training, but why do the other 17% leave?
Knowing this information helps mitigate risk by reducing the costs of onboarding a new employee that won’t stay at the company
Did you know on average it costs an employer $4500 to onboard a new employee in Canada. And that doesn’t even cover training costs
And Only 70% of companies analyze employee data
From our analysis we discovered “Mandy”. Mandy is a PhD living in New York City with 25 years of experience and is not currently enrolled in university. According to this dataset Mandy is the most ideal candidate for staying at a job.
Slide 5
Our objectives for the analysis are to be able to help HR departments in predicting
the likelihood of an employee staying
	-83%
•What are key features that retain employees?
-Again stated in slide 4-City development index, training hours and company size
Is hiring a less qualified employee more likely to stay?
No PhDs are the most likely to stay at the company
Slide 6
This is how we laid out our Github
-Main, Developing & Feature branches
-Data Preprocessing, Data Analyzing, DataBase, Dashboard
-Data Cleaning, Machine Learning 

*Now I will pass it off to Andra who will be explaining our Database*

### Andra
Slides 7-8 – Data - Andra
The Data source we used was pretty clean and not too big
We started with 2 csv files
·         Company Information
o   company size 
o   company type
o   city development index
·         Customer Information
o   employee experience
o   education level
o   gender
o   stayed or not stayed
During our cleaning process we
·         dropped 2 columns
o   city – which was a code and not relevant for our analysis
o   enrollee id – was also not needed
·         removed rows with null values –
o   19,158 down to 8,955 – 53% drop
·         To prepare the data for our training model we converted all the categorical data to numerical values
Once we are data was ready we imported the 2 csv files into 2 tables into a SQL Database and ran a query to join the 2 tables into 1 so it could be used for our machine learning model

*I am going to pass things off to Axle who is going to walk you through our Machine Learning model*

### Xikang
Slides 9-11 Xikang 
We have decided to use Random Forest algorithm for our machine learning model
Because random forest is an ensemble of decision trees, it takes inputs from all different decision trees and predicts the results. This ensures that individual errors of trees are minimized, and overall variance and errors is reduced. In addition, we can extract feature importance from the Random forest algorithm to let us have a better understanding how these features affect the result.
Finally, we have got about 87% accuracy rate for the prediction of our machine learning model which is a remarkable achievement.
Limitations:
Random forest algorithm itself is kind of like a black box for a statistical modeler, we have limited control on what the model does. We could make optimization by trying different parameters and random seeds. It is also time consuming for real-time predictions due to the large number of trees in the algorithm.


### Andra
<a href=https://public.tableau.com/profile/andra8280#!/vizhome/Group2_Final/Final “ Target=”_blank”> https://public.tableau.com/profile/andra8280#!/vizhome/Group2_Final/Final</a>
We created our dashboard in Tableau  and we will be walking you through each of the 3 sections.
We imported 2 sets of data into Tableau
1.       our cleaned data with duplicates removed
2.       and converted data used for our machine learning model.

Section 1 - Andra
The first diagram shows the importance of each of the categories from our data. 
If you click on the circles or the categories in the legend you can see the name & weigh
City development index as the highest importance at .28 followed by # of Training hours .17 and years of experience at .15
 
### Xikang
Section 2 -
 As we can see here, people would stay at the current position if the city development index is high, which is about 0.9. In addition, people who had worked for 5 years at the current position from previous job and had about 20 years working experience in the field would rather staying in the current position.
Section 3 - Andra
The graphs below show the distribution of job changing based off the categories from our data:
The filter can be used to show the # stayed, not stayed or both.
·         Stayed vs not stayed – 83% stayed
·         Gender - 90% male
·         Employees that are not Enrolled in University are more likely to stay
·         Education Level – 90% of employees have a graduate degree
·         Company Size – there was a good distribution across all sizes
·         Company Type – there was not a good distribution across company types
·         City Index – Majority of the scores are above 0.8

### Brooke

And City Development Index is scored based on the development of the city including infrastructure, transportation , green spaces ext.

While completing this project we ran into some limitations including =

We would have liked to have had the city name to connect to the city id that was provided. 
This would give employers a better representation of predictions based on their specific city.

o We would have liked to have more data for people that were leaving as 83% of our dataset were employees that stayed and 17% left, if our dataset was more distributed we could give more accurate predictions for HR departments to hire

Overall all these results lead back to Mandy. Again Mandy is a PhD living in New York City with 25 years of experience and is not currently enrolled in university.

We hope you all find your Mandy
 

