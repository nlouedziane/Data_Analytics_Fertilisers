# Data_Analytics_Fertilisers

Our client is opening a farm and wants to obtain data on fertiliser production in countries and their costs and crop yield.

SCHEMA FOR REFERENCE: https://app.quickdatabasediagrams.com/
"fertilizer_product"
--
area_code INTEGER
area VARCHAR(255)
item_code INT
item VARCHAR(255)
element_code INT
element VARCHAR(255)
year_code INT
year INT
unit VARCHAR(255)
value INT
flag VARCHAR(255)


"global_consumption"
-- 
entity VARCHAR(255) FK >- fertilizer_product.area
code VARCHAR(255)
year INT
fertilizer_quantity INT

"nitrogen"
--
entity VARCHAR(255) FK >- global_consumption.entity
code VARCHAR(255) FK >- global_consumption.code
fertilizer_indicators INT

"phosphate"
--
entity VARCHAR(255) FK >- global_consumption.entity
code VARCHAR(255) FK >- global_consumption.code
fertilizer_indicators INT

"potassium"
--
entity VARCHAR(255) FK >- global_consumption.entity
code VARCHAR(255) FK >- global_consumption.code
fertilizer_indicators INT

"crop_yeild"
--
entity VARCHAR(255) FK >- global_consumption.entity
code VARCHAR(255) FK >- global_consumption.code
year INT
crops INT
fertilizer_indicators INT
continent VARCHAR(255)

"fertilizer_application_rates"
--
entity VARCHAR(255) FK >- global_consumption.entity
code VARCHAR(255) FK >- global_consumption.code
year INT
fertilizer_consumption INT