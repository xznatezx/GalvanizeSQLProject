## GalvanizeSQLProject

Overview:
This repository was created to show how I cleaned and imported a dataset from Kaggle that provided data on the decisions of US Visa Applications over two years.  As I went through the SQL exercises, I realized that it was a great dataset for visualizations using Excel or Tableau to find interesting patterns, however a bit difficult to query because of the large number of nulls.  This is though a great dataset to start with, query to something manageable that can then be visualized using the other tools.  My SQL querying simply built upon itself to be one main query that 

Data was sourced from the following Kaggle Link:
https://www.kaggle.com/jboysen/us-perm-visas/home
The dataset contained over 350K records.  I used Excel to clean the data since 1/3 of it didn't have data populated for columns before a certain date.  I kept only the rows that had pertinent and interesting data that I knew could be queried with minimal NULL values and analyzed to find patterns especially using excel pivot tables and charts.  Since there were still over 250K rows of data, the CSV file I used to upload was still 136MB, so it could not be upoaded to Github.

SQL queries that accomplish the most significant things you know how to do with SQL. These are:
1. Load data into a database - https://github.com/xznatezx/GalvanizeSQLProject/blob/master/ProjectDataLoadScript.sql
2. Select data, including aggregates and using CASE statements, from a database  
3. Retrieve data that meets your conditions by using Where and Having
4. Use WITH AS structure
5. Cast data as a new type so that it can be aggregated.  This proved difficult in trying to find to add a column that showed the percent or ratio of the column to the left.  

Items 2-5 are all showcased in my query here:  https://github.com/xznatezx/GalvanizeSQLProject/blob/master/UseAggsAndCase.sql


I tried joining a "Region" table I had found to the database here, and realized that the case matters in Joins.  That is here: 
So I will play more with joins on the other database to showcase fun with joins. 
