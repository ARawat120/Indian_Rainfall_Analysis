India Rainfall Analysis: Historical Trends vs. Official Normals (1901–2015)

Project Overview

This project uses SQL to analyze two datasets of Indian rainfall data: long-term historical time series (1901-2015) and static district-wise official normals. The goal is to identify climate shifts by quantifying the percentage difference between the calculated historical average rainfall and the established official normal figures.

Key Analysis Performed:

Aggregation: Calculating the 115-year average rainfall for each region.

Cross-Table Joining: Linking aggregated historical data with official normal data.

Deviation Calculation: Determining the percentage by which historical averages are wetter or drier than the established normal.

📁 Repository Structure

data/: Contains the two raw CSV files.

sql/rainfall_schema.sql: Defines the two tables (historical_rainfall and district_normals).

sql/query_10_historical_vs_normal.sql: The main analytical query using a Common Table Expression (CTE) to produce the final results.

How to Reproduce the Analysis

To run this analysis, follow these three steps in your preferred SQL environment (MySQL, PostgreSQL, etc.):

Step 1: Create the Database Schema

Execute the following file to set up the two tables required for the analysis:

-- Execute this file first
-- File: sql/rainfall_schema.sql
-- (Creates historical_rainfall and district_normals tables)



Step 2: Import the Data

Import your two CSV files into the newly created tables:

CSV File

Target Table

rainfall in india 1901-2015.csv

historical_rainfall

district wise rainfall normal.csv

district_normals

Step 3: Run the Final Analysis

Execute the main query to get the results, ordered by the largest climate shift:

-- Execute this file to get the final results
-- File: sql/query_10_historical_vs_normal.sql
-- (Calculates percentage deviation)



The resulting table will show the Percent_Deviation, where positive values indicate a historically wetter trend, and negative values indicate a historically drier trend.
