-- SQL PROJECT QUESTIONS
-- Dataset: PC Sales
-- ======================================================

-- BASIC QUESTIONS

 select * FROM [pc_sales_aggrigation].[dbo].[1772542271737_pc_data (1)]

-- 2. Count the number of sales per Continent.

select count(*)as numberofsales, [Continent] FROM [pc_sales_aggrigation].[dbo].[1772542271737_pc_data (1)]
group by  [Continent]

-- 3. Count the number of sales per Country or State.


select count(*)as numberofsales,[Country_or_State]
 FROM [pc_sales_aggrigation].[dbo].[1772542271737_pc_data (1)]
 group by [Country_or_State]

-- 4. List all distinct Shop Name values.

select distinct [Shop_Name] FROM [pc_sales_aggrigation].[dbo].[1772542271737_pc_data (1)]

-- 5. Find the average Sale Price.

select avg (convert(money,[Sale_Price]))  FROM [pc_sales_aggrigation].[dbo].[1772542271737_pc_data (1)] 

-- 6. Find the highest and lowest Sale Price.

select max (convert(money,[Sale_Price])) as highestprice ,min (convert(money,[Sale_Price])) as lowerstprice
FROM [pc_sales_aggrigation].[dbo].[1772542271737_pc_data (1)] 



-- 7. Count the number of sales by Payment Method.

select count (*)as numberofsales, [Payment_Method]
from [pc_sales_aggrigation].[dbo].[1772542271737_pc_data (1)] 
group by [Payment_Method]

-- 8. Count the number of sales by Channel (Online vs Offline).

select count (*)as numberofsales, [Channel]
from [pc_sales_aggrigation].[dbo].[1772542271737_pc_data (1)] 
group by [Channel]


-- 9. Count the number of sales by Priority level.


select count (*)as numberofsales, [Priority]
from [pc_sales_aggrigation].[dbo].[1772542271737_pc_data (1)] 
group by [Priority]

-- 10. Count the number of distinct PC Make values.

select count (distinct [PC_Make]) from [pc_sales_aggrigation].[dbo].[1772542271737_pc_data (1)] 
