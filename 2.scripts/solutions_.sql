
-- ======================================================
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

-- INTERMEDIATE QUESTIONS

-- 11. Calculate total revenue (SUM of Sale Price).

select sum (convert(money,[Sale_Price])) as totalrevenue
FROM [pc_sales_aggrigation].[dbo].[1772542271737_pc_data (1)] 

-- 12. Calculate total profit (SUM of Sale Price - Cost Price).

select sum (convert(money,[Sale_Price])) - sum (convert(money,[Cost_Price])) as totalprofit
FROM [pc_sales_aggrigation].[dbo].[1772542271737_pc_data (1)] 

-- 13. Find the average Discount Amount.

select avg (convert(money,[Discount_Amount])) as averageDiscount
FROM [pc_sales_aggrigation].[dbo].[1772542271737_pc_data (1)]

-- 14. Calculate total Finance Amount issued.

select sum (convert(money,[Finance_Amount])) as totalFinanceAmount
FROM [pc_sales_aggrigation].[dbo].[1772542271737_pc_data (1)]

-- 15. Find total revenue per PC Make.

select sum(convert(money, [Sale_Price])) as totalrevenue,
       [PC_Make]
FROM [pc_sales_aggrigation].[dbo].[1772542271737_pc_data (1)]
group by [PC_Make]

-- 16. Find average Sale Price per Storage Type.

select avg(convert(money, [Sale_Price])) as averageSalePrice,
       [Storage_Type]
FROM [pc_sales_aggrigation].[dbo].[1772542271737_pc_data (1)]
group by [Storage_Type]

-- 17. Calculate total revenue per Shop Name.

select sum(convert(money, [Sale_Price])) as totalRevenue,
       [Shop_Name]
FROM [pc_sales_aggrigation].[dbo].[1772542271737_pc_data (1)]
group by [Shop_Name]

-- 18. Calculate total revenue per Sales Person Name.

select sum(convert(money, [Sale_Price])) as totalRevenue,
       [Sales_Person_Name]
FROM [pc_sales_aggrigation].[dbo].[1772542271737_pc_data (1)]
group by [Sales_Person_Name]

-- 19. Find average Credit Score per Payment Method.

select avg (convert(money,[Credit_Score])) as averageCreditScore,
       [Payment_Method]
FROM [pc_sales_aggrigation].[dbo].[1772542271737_pc_data (1)]
group by [Payment_Method]

-- 20. Calculate total Cost of Repairs per Sales Person Department.

select sum (convert(money,[Cost_of_Repairs])) as totalCostOfRepairs,
       [Sales_Person_Department]
FROM [pc_sales_aggrigation].[dbo].[1772542271737_pc_data (1)]
group by [Sales_Person_Department]

-- ADVANCED QUESTIONS

-- 21. Calculate profit per Shop Name.

select sum (convert(money,[Sale_Price])) - sum (convert(money,[Cost_Price])) as profit,
       [Shop_Name]
FROM [pc_sales_aggrigation].[dbo].[1772542271737_pc_data (1)]
group by [Shop_Name]

-- 22. Calculate profit margin per sale ((Sale Price - Cost Price) / Sale Price).

select ((convert(money,[Sale_Price]) - convert(money,[Cost_Price])) / convert(money,[Sale_Price])) as profitMargin,
       [Shop_Name]
FROM [pc_sales_aggrigation].[dbo].[1772542271737_pc_data (1)] 
group by [Shop_Name]

-- 23. Determine which Continent has the highest total revenue.

select sum (convert(money,[Sale_Price])) as totalRevenue,
       [Continent]
FROM [pc_sales_aggrigation].[dbo].[1772542271737_pc_data (1)]
group by [Continent]
order by totalRevenue desc

-- 24. Calculate average Sale Price per RAM size.

select avg (convert(money,[Sale_Price])) as averageSalePrice,
       [RAM_Size]
FROM [pc_sales_aggrigation].[dbo].[1772542271737_pc_data (1)]
group by [RAM_Size]

-- 25. Find the PC Model with the highest Sale Price.

select [PC_Model], max (convert(money,[Sale_Price])) as highestSalePrice
FROM [pc_sales_aggrigation].[dbo].[1772542271737_pc_data (1)]
group by [PC_Model]
order by highestSalePrice desc

-- 26. Calculate the average number of days between Purchase Date and Ship Date.

select avg (datediff(day, [Purchase_Date], [Ship_Date])) as averageDaysToShip
FROM [pc_sales_aggrigation].[dbo].[1772542271737_pc_data (1)] 
where [Ship_Date] is not null

-- 27. Determine which Sales Person Department generates the highest revenue.

select sum (convert(money,[Sale_Price])) as totalRevenue,
       [Sales_Person_Department]
FROM [pc_sales_aggrigation].[dbo].[1772542271737_pc_data (1)]
group by [Sales_Person_Department]
order by totalRevenue desc

-- 28. Calculate total revenue per Storage Capacity.

select sum (convert(money,[Sale_Price])) as totalRevenue,
       [Storage_Capacity]
FROM [pc_sales_aggrigation].[dbo].[1772542271737_pc_data (1)]
group by [Storage_Capacity]
order by totalRevenue desc

-- 29. Identify sales where Sale Price is lower than PC Market Price.

select *
FROM [pc_sales_aggrigation].[dbo].[1772542271737_pc_data (1)]
where convert(money,[Sale_Price]) < convert(money,[PC_Market_Price])
-- 30. Rank Sales Person Name by Total Sales per Employee using a window function.

select [Sales_Person_Name],
       sum(convert(money,[Sale_Price])) as totalSales,
       rank() over (order by sum(convert(money,[Sale_Price])) desc) as salesRank
FROM [pc_sales_aggrigation].[dbo].[1772542271737_pc_data (1)]
group by [Sales_Person_Name]
order by salesRank


