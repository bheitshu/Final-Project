/* Create Table */

CREATE TABLE Cleaned_Data (
 "index" INTEGER,
 "enrollee_id" INTEGER,
 "city_development_index" FLOAT,
 "training_hours" INTEGER,
 "target" INTEGER,
 "gender_Female" INTEGER,
 "gender_Male" INTEGER,
 "gender_Other" INTEGER,
 "relevent_experience_Has_relevent_experience" INTEGER,
 "relevent_experience_No_relevent_experience" INTEGER,
 "enrolled_university_Full_time_course" INTEGER,
 "enrolled_university_Part_time_course" INTEGER,
 "enrolled_university_no_enrollment" INTEGER,
 "education_level_Graduate" INTEGER,
 "education_level_Masters" INTEGER,
 "education_level_Phd" INTEGER,
 "major_discipline_Arts" INTEGER,
 "major_discipline_Business_Degree" INTEGER,
 "major_discipline_Humanities" INTEGER,
 "major_discipline_No_Major" INTEGER,
 "major_discipline_Other" INTEGER,
 "major_discipline_STEM" INTEGER,
 "experience_1" INTEGER,
 "experience_10" INTEGER,
 "experience_11" INTEGER,
 "experience_12" INTEGER,
 "experience_13" INTEGER,
 "experience_14" INTEGER,
 "experience_15" INTEGER,
 "experience_16" INTEGER,
 "experience_17" INTEGER,
 "experience_18" INTEGER,
 "experience_19" INTEGER,
 "experience_2" INTEGER,
 "experience_20" INTEGER,
 "experience_3" INTEGER,
 "experience_4" INTEGER,
 "experience_5" INTEGER,
 "experience_6" INTEGER,
 "experience_7" INTEGER,
 "experience_8" INTEGER,
 "experience_9" INTEGER,
 "experience_<1" INTEGER,
 "experience_>20" INTEGER,
 "company_size_10/49" INTEGER,
 "company_size_100-500" INTEGER,
 "company_size_1000-4999" INTEGER,
 "company_size_10000+" INTEGER,
 "company_size_50-99" INTEGER,
 "company_size_500-999" INTEGER,
 "company_size_5000-9999" INTEGER,
 "company_size_<10" INTEGER,
 "company_type_Early_Stage_Startup" INTEGER,
 "company_type_Funded_Startup" INTEGER,
 "company_type_NGO" INTEGER,
 "company_type_Other" INTEGER,
 "company_type_Public_Sector" INTEGER,
 "company_type_Pvt_Ltd" INTEGER,
 "last_new_job_1" INTEGER,
 "last_new_job_2" INTEGER,
 "last_new_job_3" INTEGER,
 "last_new_job_4" INTEGER,
 "last_new_job_>4" INTEGER,
 "last_new_job_never" INTEGER,
 CONSTRAINT "pk_Cleaned_Data" PRIMARY KEY (
  "enrollee_id"
  )
);


/* Import Data */


COPY Cleaned_Data
FROM 'C:\Users\Public\cleaned_data.csv'
DELIMITER ','
CSV HEADER;


/* View Data */

select * from Cleaned_Data





