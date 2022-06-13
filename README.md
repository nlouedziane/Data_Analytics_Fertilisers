# Data_Analytics_Fertilisers

Data Cleanup & Analysis
CLIENT:
Our client is a future fertilizer producer who wanted to gather information on current and passed fertilizer usage around the world. 

The questions asked were: 
1.	Which are the most common types of fertilizers used globally? 
2.	Which countries are the highest consumers of fertilizer product? 
3.	How is crop yield effected by fertilizer use? 
4.	What are the application rates, by country for the three main types of fertilizers used globally?

EXTRACT:
We focussed our search on major global environmental websites who publish csv files from global database, looking for data that would be able to be manipulated into a relational database, and answered the questions asked by our client. 

TRANSFORM:
Fertilizer CSV files have been chosen to analyse the data. After uploading files into the data frame the following functions have been made:
•	Merging data frames
•	Renaming columns
•	Remove/ filter rows based on conditions on a column (above a certain value)
•	Use property ‘loc’ to access a group of rows and columns by labels or Boolean array
•	Drop columns with no information
After filtering data, we can present to the customer possible investments in fertilizer demand and major consumers.

LOAD:
We chose a relational database to load our data into as the data that we collected related to each other and could be fit into tables. Our database constitutes of 7 tables, including data about fertiliser products and their relative prices, application rates, global consumption, crop yield and the indicators of three different fertilisers.

The fertiliser product table provides data about the type of fertiliser being sold by different countries, including the year it was sold and the price.

Fertilizer application rates table looks at the rates of fertiliser application by countries in specific years.

The global consumption table is the quantity of fertiliser that countries have been using over the years.

The crop yield table provides data about the yield of cereals in countries per kg/ha of nitrogen fertiliser.

The potassium, nitrogen and phosphate tables show the use of fertilisers per kg/ha in countries.

![image](https://user-images.githubusercontent.com/100659564/173346590-855b1c10-da8f-4706-85aa-6bd25c08ed25.png)
