# Project-1
My First Data engineering project.


In this project i have got the source data from kaggle.
The objective of the project is to understand the extract ,transform and load techniques in a basic way,along with handson on AWS S3,IAM and Snowflake and Python .
1.I created a S3 bucket using aws and uploaded the cv files in my bucket.
2.I created a snowflake database called IPL_APP.
  -- In that database IPL_CORE schema was created where i had 7 core tables where the raw data from csv file is loaded.
  -- Stats schema was created.
3.An external stage was created pointing to my S3 bucket.
4.I loaded the raw data from stage to core tables.
5.I used the python script to load the transformed data into two tables BATTING_STATS and BOWLING_STATS.
