# Final Project: IEOR E4501 - Fall 2024

## Project Overview

This project analyzes New York City's Yellow Taxi and Uber ride data from January 2020 to August 2024, joined with historical weather data, to uncover patterns in ride trends and behaviors. The implementation includes data preprocessing, storage in a SQLite database, SQL-based analysis, and visualization in a Jupyter Notebook. The project is designed to showcase end-to-end data analytics skills, from data cleaning to insight generation.

## What Has Been Implemented

The project is divided into four main parts:

1. Data Preprocessing: Programmatic downloading, cleaning, and sampling of large datasets to make them suitable for analysis.

2. Data Storage: Creation and population of a SQLite database with structured tables for Yellow Taxi, Uber, and weather data.

3. Data Analysis: SQL queries addressing key questions about ride popularity, distance trends, and weather impacts.

4. Data Visualization: Generation of intuitive plots and maps to display insights, including scatter plots, bar charts, and geospatial visualizations.

The deliverables include a single Jupyter Notebook, SQL query files, and a schema file.

## Group Information

Group Name: Project Group 24
UNIs: [wl3009, zj2410]

## Instructions for Use
1. Clone the repository and ensure you have Python 3.10 or higher installed.

2. Install required packages using the requirements.txt file.

3. Execute the Jupyter Notebook in order, ensuring all dependencies are met.

4. Review the included SQL queries and visualizations for detailed insights.

For additional guidance, consult the project notebook, which includes Markdown documentation for each step.

## Necessary Files

### Dataset/weather_data

5-year weather data that are not downloaded programme programmatically.  

### Final Project.ipynb

The main Jupyter Notebook of the group project.

### requirements.txt

A list of necessary packages used to run the project.

### .gitignore file

A file to ignore files that should not be committed. 

### taxi_zone files

Files that are used to convert locations in the taxi and uber records.

### schema.sql

Schema file that defines the structures of each table.

### query files (*.sql)

Query files that are necessary to create sql queries.
