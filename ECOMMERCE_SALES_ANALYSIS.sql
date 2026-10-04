use ecommerce_analysis;
select*from sales_data;
select count(*) as total_orders
from sales_data;
SELECT `Order Id`,
	   `Order Date`, 
       `Customer Lname`,
       `Customer Fname`,
       `Category Name`
FROM sales_data
LIMIT 20;
SELECT `Order Id`,
	   `Order Date`, 
       `Customer Lname`,
       `Customer Fname`,
       `Category Name`
FROM sales_data
ORDER BY `Order Id` DESC
LIMIT 20;
SELECT * 
FROM sales_data
LIMIT 5;
DESCRIBE sales_data;
SELECT DISTINCT `Category Name`
FROM sales_data;
SELECT COUNT(*)
FROM sales_data;
SELECT COUNT(DISTINCT `Category Name`)
FROM sales_data;
SELECT `Category Name`, COUNT(*) AS
Total_orders
FROM sales_data
GROUP BY `Category Name`;
SELECT DISTINCT `Category Name`
FROM Sales_data
WHERE `category Name` LIKE '%Camping%';
SET SQL_SAFE_UPDATES = 0;
UPDATE sales_data
SET `Category Name` = 'Camping & Hiking'
WHERE `Category Name` = 'Camping and Hiking';
SELECT DISTINCT `Category Name`
FROM Sales_data
WHERE `category Name` LIKE '%Camping%';
SELECT `Order Id`, COUNT(*) AS
Duplicate_count
FROM sales_data
GROUP BY `Order Id`
HAVING COUNT(*) > 1;
SELECT * FROM sales_data
WHERE `Order Id` IN (59898, 58644);
SELECT `Order Id`, `Customer Fname`,
`Customer Lname`,`Category Name`,sales
 FROM sales_data
 WHERE `Order Id` IN (59898, 58644);
 SELECT COUNT(*)
 FROM sales_data
 WHERE `Category Name`IS NULL;
 SELECT COUNT(*)
 FROM sales_data
 WHERE `Sales`IS NULL;
  SELECT COUNT(*)
 FROM sales_data
 WHERE `Order Id`IS NULL;
 SELECT DISTINCT `Category Name`
 FROM sales_data
 WHERE `Category Name` <> TRIM(`Category Name`);
 SELECT SUM(Sales) AS Total_Sales
 FROM sales_data;
 SELECT ROUND (SUM(Sales), 2) AS Total_Sales
 FROM sales_data;
 SELECT `Category Name`, ROUND(SUM(Sales), 2) AS Total_Sales
 FROM sales_data
 GROUP BY `Category Name`;
 SELECT `Category Name`,ROUND(SUM(Sales),2) AS Total_Sales
 FROM sales_data
 GROUP BY `Category Name`
 ORDER BY `Total_Sales` DESC;
 SELECT `Customer Country`, SUM(Sales) AS Total_sales
 FROM sales_data
 group by `Customer Country`
 ORDER BY `Total_Sales` DESC;
 use ecommerce_analysis;
 SELECT*FROM sales_data;
 DESCRIBE sales_data;
 SELECT `Customer Segment`,SUM(Sales) AS Total_Sales
 FROM sales_data
 GROUP BY `Customer Segment`;
  SELECT `Customer Segment`,ROUND(SUM(Sales),2) AS Total_Sales
 FROM sales_data
 GROUP BY `Customer Segment`;
 SELECT `Customer Segment`,ROUND(SUM(Sales),2) AS Total_sales
 FROM sales_data
 GROUP BY `Customer Segment`
 ORDER BY `Total_Sales` DESC;
 SELECT ROUND(AVG(Sales),2) AS Average_Sales
 FROM sales_data;
 SELECT ROUND(MAX(Sales),2) AS Highest_Sales
 FROM sales_data;
 SELECT ROUND(MIN(Sales),2) AS Lowest_Sales
 FROM sales_data;
 SELECT `Customer Segment`,COUNT(*) AS Total_Segment
 FROM sales_data
 GROUP BY `Customer Segment`;
 SELECT `Customer Segment`,COUNT(*) AS Total_Segment
 FROM sales_data
 GROUP BY `Customer Segment`
 ORDER BY `Total_Segment` DESC;
 SELECT `Customer Segment`,COUNT(*) AS Total_Segment
 FROM sales_data
 GROUP BY `Customer Segment`
 ORDER BY `Total_Segment` ASC;
 SELECT `Customer Segment`, ROUND(AVG(SALES),2) AS Average_Sales
 FROM sales_data
 GROUP BY `Customer Segment`
 ORDER BY `Average_Sales`DESC;
 SELECT `Customer Segment`, ROUND(SUM(SALES),2) AS Total_Sales
 FROM sales_data
 GROUP BY `Customer Segment`
 ORDER BY `Total_Sales`DESC;
 SELECT `Category Name`, COUNT(*) AS Total_Orders
 FROM sales_data
 group by `Category Name`
 ORDER BY `Total_Orders` DESC;
 SELECT `Category Name`, COUNT(*) AS Total_Orders
 FROM sales_data
 group by `Category Name`
 ORDER BY `Total_Orders` ASC;
  SELECT `Category Name`, COUNT(*) AS Total_Orders
 FROM sales_data
 group by `Category Name`;
  SELECT `Category Name`, SUM(Sales) AS Total_Orders
 FROM sales_data
 group by `Category Name`;
 SELECT `Category Name`, ROUND(SUM(SALES),2) AS Total_Sales
 FROM sales_data
 GROUP BY `Category Name`
 HAVING SUM(Sales)>100000
 ORDER BY `Total_Sales` DESC;
 SELECT `Category Name`
 FROM sales_data
 WHERE Sales > 500;
 USE ecommerce_analysis;
 SELECT*FROM sales_data;
 DESCRIBE sales_data;
 SELECT `Category Name`,`Sales`
 FROM sales_data
 WHERE Sales > 500;
 SELECT `Category Name`,`Sales`,`Customer Country`
 FROM sales_data
 WHERE `Sales` > 500
 AND `Customer Country`= 'United States';
  SELECT `Category Name`,`Sales`,`Customer Country`
 FROM sales_data
 WHERE `Sales` > 500
 OR `Customer Country`= 'United States';
 SELECT `Category Name`,ROUND(Sales, 2)AS `Sales`
 FROM sales_data
 WHERE `Sales` BETWEEN 100 AND 500;
 SELECT `Category Name`,`Customer Country`
 FROM sales_data
 WHERE `Customer Country` IN ('United States','Puerto Rico');

 
 
 
 
 

