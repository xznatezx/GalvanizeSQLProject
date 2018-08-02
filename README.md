# Galvanize SQL Project

### Contents
1. Overview
2. Data Source
3. Project Requirements Covered
4. Conclusion


#### 1. Overview
This repository was created to show how I cleaned and imported a dataset from Kaggle that provided data on the decisions of US Visa Applications over two years.  As I went through the SQL exercises, I realized that it was a great dataset for visualizations using Excel or Tableau to find interesting patterns, however a bit difficult to query because of the large number of nulls.  This is though a great dataset to start with, query to something manageable that can then be visualized using the other tools.  My SQL querying simply built upon itself to be one main query that showcased much of the requirements but it was a labor of love and really gave me a great appreciation for the problems and difficulties that will come up in querying imperfect data.

#### 2. Data Source 
Data was sourced from the following Kaggle Link:
https://www.kaggle.com/jboysen/us-perm-visas/home
The dataset contained over 350K records.  I used Excel to clean the data since 1/3 of it didn't have data populated for pertinent columns before a certain date.  I kept only the rows that had pertinent and interesting data that I knew could be queried with minimal NULL values and analyzed to find patterns especially using excel pivot tables and charts.  Since there were still over 250K rows of data, the CSV file I used to upload was still 136MB, so it could not be upoaded to Github, so it is loaded to my Google Drive:  https://drive.google.com/drive/folders/1i2iVjRvlMTrGChk7S_rGGD13WZdUamcs?usp=sharing

#### 3. Project Requirements
1. Load data into a database - https://github.com/xznatezx/GalvanizeSQLProject/blob/master/ProjectDataLoadScript.sql
2. Select data, including aggregates and using CASE statements, from a database  
3. Retrieve data that meets your conditions by using Where and Having
4. Use WITH AS structure
5. Cast data as a new type so that it can be aggregated.  This proved difficult in trying to find to add a column that showed the percent or ratio of the column to the left.  

Items 2-5 are all showcased in my query here:  https://github.com/xznatezx/GalvanizeSQLProject/blob/master/UseAggsAndCase.sql  I had to play a lot with this query, so while the result is just one, it took a lot of trying and building.

I tried joining a "Region" table I had found to the database here, and realized that the case matters in Joins.  That is here: https://github.com/xznatezx/GalvanizeSQLProject/blob/master/UseAggsAndCase.sql
So I will play more with joins on the other sample database to showcase fun with joins. (As of 8/1, I just haven't had time to do this!!)

#### 4. Conclusion
Overall, I'm excited to use this dataset to make some fun visualizations to answer questions like:
- Do certain employers get preferential treatment on visa applications
- What country's citizens have the lowest acceptance rate.
- Can certain employers get citizens from "unfriendly" countries get their employees approved?
- Do higher paid employees get better acceptance rates?
