# Project-1
# "Data Transformation Project: AWS S3, Snowflake, and Python"

Executed a comprehensive project focused on mastering Extract, Transform, and Load (ETL) techniques, with a practical emphasis on AWS S3, IAM, Snowflake, and Python. The project's core objective was to develop a foundational understanding of these technologies through hands-on implementation.

# AWS S3 Infrastructure:
-- Established a dedicated AWS S3 bucket to house source data procured from Kaggle, consisting of CV files.

# Snowflake Database Architecture:
-- Configured a Snowflake database named IPL_APP.
-- Designed and implemented the IPL_CORE schema within the database, comprising 7 core tables for the systematic storage of raw data extracted from CSV files.
-- Introduced a Stats schema to facilitate subsequent data processing.

# External Stage Integration:
-- Implemented an external stage within Snowflake, seamlessly interfacing with the designated S3 bucket. This integration ensured efficient data flow between Snowflake and the source data residing in AWS S3.

# Data Loading Methodology:
-- Orchestrated a robust data loading process, transporting raw data from the external stage to predefined core tables within the IPL_CORE schema.

# Python Scripting for Transformation:
-- Employed Python scripting for data transformation, customizing the script to align with project specifications.
-- Executed successful loading of transformed data into distinct tables, specifically BATTING_STATS and BOWLING_STATS, augmenting data organization and analytical capabilities.
