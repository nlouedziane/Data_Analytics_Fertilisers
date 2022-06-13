Data Cleanup & Analysis
CLIENT:
Our client is a future fertilizer producer who wanted to gather information on current and historical fertilizer usage around the world. 

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
We chose a relational database to load our data into as the data that we collected related to each other and could be fit into tables. Our database constitutes of 6 tables, including data about fertiliser products and their relative prices, application rates, global consumption, crop yield and the indicators of three different fertilisers.

HOW TO LOAD THE TABLES IN TO POSTRESQL:
Due to the primary keys and the way tables are linked, there is a specific order to load the CSVs in to PostgreSQL:
1.	Fertilizer_product from csv ‘FertilizersProduct.csv’
2.	Global_consumption from csv ‘global-consumption-usda.csv’
3.	Nitrogen from csv ‘nitrogen fertilizer use per hectare of crapland 2017.csv’
4.	Phosphate and Potassium from csv ‘potassium_phosphate.csv’
5.	Crop_yield from csv ‘cereal-crop-yield-vs-fertilizer-application.csv’
6.	Fertilizer_application_rates from csv ‘fertilizer-application-rates-over-the-long-run.csv’

Fertiliser Product:
Provides data about the type of fertiliser being sold by different countries, including the year it was sold and the price.

The table has the following columns; 
-	area_code [INT]
-	area [VARCHAR(255)]
-	item_code [INT]
-	item [VARCHAR(255)]
-	element_code [INT]
-	element [VARCHAR(255)]
-	year_code [INT]
-	year [INT]
-	unit [VARCHAR(255)]
-	value [INT]
-	flag [VARCHAR(255)]. 

The table is linked to the global_consumption table through the area key.

Global consumption table:
Provides data about the quantity of fertiliser that countries have been using over the years.

The table has the following columns; 
-	entity [VARCHAR(255)]
-	code [VARCHAR(255)]
-	year [INT]
-	fertilizer_quantity [INT]

The table is linked to the fertilizer_product through the entity key. 

The table is also linked to the fertilizer_application_rates, nitrogen, potassium, phosphate and crop_yeild tables through the entity and the code key.

Fertilizer_application_rates table:
Looks at the rates of fertiliser application by countries in specific years.

The table has the following columns;
-	entity [VARCHAR(255)]
-	code [VARCHAR(255)]
-	year [INT]
-	fertilizer_consumption [INT]

The table is linked to the global_consumption table through the entity and code key.


Crop_yield table:
Provides data about the yield of cereals in countries per kg/ha of nitrogen fertiliser.

The table has the following columns;
-	entity [VARCHAR(255)]
-	code [VARCHAR(255)]
-	year [INT]
-	crops [INT]
-	fertilizer_indicators [INT]
-	continent [VARCHAR(255)]

The table is linked to the global consumption table through the entity and code key.

Nitrogen consumption 2017 data frame is talking about worldwide nitrogen consumption. Columns have been filtered and renamed easy to understand. 

The table has the following columns;
-	entity [VARCHAR(255)] indicates country or continent, 
-	code [VARCHAR(255)]
-	years [INT] 2002 to 2017
-	nitrogen consumption per area kilograms in a hectare [INT]

The data frames for potassium and phosphate have been merged into one data frame for easier understanding of data. They have the same format as Nitrogen consumption table. 

The table has the following columns;
-	entity [VARCHAR(255)] indicates country or continent, 
-	code [VARCHAR(255)]
-	years [INT] 2002 to 2017 
-	consumption per area kilograms in a hectare [INT]
