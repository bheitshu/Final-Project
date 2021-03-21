# Final-Project
HR Analytics: Job Change of Data Scientists



### Group Members:
Brooke Heitshu,
Xikang Zhang,
Andra Lobo

## Topic Selected

We sourced the “HR Analytics: Job Change of Data Scientist” from the website kaggle. This data set was originally sourced by a company who is active in Big Data and Data Science. This particular company offers courses and training internally to enhance their current employees skill sets. The company has collected data from all employees who participated in the training program and noticed some employees tend to seek new employment opportunities after completion. 
<a href=”HR Analytics: Job Change of Data Scientists | Kaggle”>HR Analytics: Job Change of Data Scientists | Kaggle</a>

## Reasons Why we selected this topic 

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
<img src="https://github.com/bheitshu/Final-Project/blob/main/images/DataSource_Description.png?raw=true">

Sample Data:
<img src="https://github.com/bheitshu/Final-Project/blob/main/images/Starter_Data.png?raw=true">


### The following steps were completed:
-  We removed the following columns:
   - City 
-  We removed all rows with null values
-  We converted the categorical values to numerical values
-  We created and imported the cleaned_data.csv in a  PostgreSQL database

### GitHub Flow

[Main.pdf](https://github.com/bheitshu/Final-Project/files/6177928/Main.pdf)

### ERD diagram: 
<img src="https://github.com/bheitshu/Final-Project/blob/main/images/ERD.png?raw=true">

< a href="https://github.com/bheitshu/Final-Project/blob/main/images/SQL.sql?raw=true" target=”_blank”>Click here to view sql</a>


## Machine Learning Model
>>>>>>> d0a995848624f4091bad66e8a440ac6a1fcd256f
