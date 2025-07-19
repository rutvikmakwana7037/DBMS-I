CREATE TABLE  SALES_DATA(
	Region VARCHAR(50),
 	Product VARCHAR(50),
	Sales_Amount INT,
	Year INT
);

INSERT INTO SALES_DATA VALUES
('North America' ,'Watch'  ,1500 ,2023), 
('Europe'        ,'Mobile' ,1200 ,2023), 
('Asia'          ,'Watch'  ,1800 ,2023), 
('North America' ,'TV'     ,900  ,2024), 
('Europe'        ,'Watch'  ,2000 ,2024), 
('Asia'          ,'Mobile' ,1000 ,2024), 
('North America' ,'Mobile' ,1600 ,2023), 
('Europe'        ,'TV'     ,1500 ,2023), 
('Asia'          ,'TV'     ,1100 ,2024), 
('North America' ,'Watch'  ,1700 ,2024);

SELECT * FROM SALES_DATA


--Part – A: 

--1. Display Total Sales Amount by Region. 
select Region,SUM(Sales_Amount) As Toatl_sal from SALES_DATA
group by Region

--2. Display Average Sales Amount by Product 
select Product,AVG(Sales_Amount) As AVG_sal from SALES_DATA
group by Product

--3. Display Maximum Sales Amount by Year 
select Year,MAX(Sales_Amount) As MAX_sal from SALES_DATA
group by Year

--4. Display Minimum Sales Amount by Region and Year 
select Region,Year,MIN(Sales_Amount) As Min_sal from SALES_DATA
group by Region,Year

--5. Count of Products Sold by Region 
select Region,Count(product) As count_Pro from SALES_DATA
group by Region

--6. Display Sales Amount by Year and Product 
select Year,Product,Count(*) AS Display_sal from SALES_DATA
group by Year,Product

--7. Display Regions with Total Sales Greater Than 5000 
select Region,Sum(Sales_Amount) AS Total_sal from SALES_DATA
group by Region
having Sum(Sales_Amount)>5000

--8. Display Products with Average Sales Less Than 10000 
select Product,AVG(Sales_Amount) AS AVG_sal from SALES_DATA
group by Product
having Sum(Sales_Amount)<10000

--9. Display Years with Maximum Sales Exceeding 500 
select Year,MAX(Sales_Amount) AS AVG_sal from SALES_DATA
group by Year
having MAX(Sales_Amount)>500


--10. Display Regions with at Least 3 Distinct Products Sold. 
SELECT Region, COUNT(DISTINCT Product) AS DistinctProducts
FROM SALES_DATA
GROUP BY Region
HAVING COUNT(DISTINCT Product) >= 3;

--11. Display Years with Minimum Sales Less Than 1000 
SELECT Year,MIN(Sales_Amount) AS main_sal from SALES_DATA
group by Year
having MIN(Sales_Amount)<1000

--12. Display Total Sales Amount by Region for Year 2023, Sorted by Total Amount 
SELECT Region, SUM(Sales_Amount) AS TotalSales
FROM SALES_DATA
WHERE Year = 2023
GROUP BY Region
ORDER BY TotalSales DESC;


--13. Find the Region Where 'Mobile' Had the Lowest Total Sales Across All Years. 
SELECT Region, SUM(Sales_Amount) AS TotalSales
FROM SALES_DATA
WHERE Product = 'Mobile'
GROUP BY Region
ORDER BY TotalSales ASC

--14. Find the Product with the Highest Sales Across All Regions in 2023. 
select Region,SUM(Sales_Amount) As HiestSales
from SALES_DATA
where Year = 2023
group by Region

--15. Find Regions Where 'TV' Sales in 2023 Were Greater Than 1000. 
SELECT Region, SUM(Sales_Amount) AS TotalSales
FROM SALES_DATA
WHERE Product = 'TV' AND Year = 2023
GROUP BY Region
HAVING SUM(Sales_Amount) > 1000;



--Part – B:

--1. Display Count of Orders by Year and Region, Sorted by Year and Region 
SELECT Year, Region, COUNT(*) AS Order_Count
FROM SALES_DATA
GROUP BY Year, Region
ORDER BY Year, Region;


--2. Display Regions with Maximum Sales Amount Exceeding 1000 in Any Year, Sorted by Region 
SELECT Region, MAX(Sales_Amount) AS Max_Sale
FROM SALES_DATA
GROUP BY Region, Year
HAVING MAX(Sales_Amount) > 1000
ORDER BY Region;


--3. Display Years with Total Sales Amount Less Than 10000, Sorted by Year Descending 
SELECT Year, SUM(Sales_Amount) AS Total_Sale
FROM SALES_DATA
GROUP BY Year
HAVING SUM(Sales_Amount) < 10000
ORDER BY Year DESC;


--4. Display Top 3 Regions by Total Sales Amount in Year 2024 
SELECT Region, SUM(Sales_Amount) AS Total_Sale
FROM SALES_DATA
WHERE Year = 2024
GROUP BY Region
ORDER BY Total_Sale DESC



--5. Find the Year with the Lowest Total Sales Across All Regions. 
SELECT Year, SUM(Sales_Amount) AS Total_Sale
FROM SALES_DATA
GROUP BY Year
ORDER BY Total_Sale ASC



--Part – C: 

--1. Display Products with Average Sales Amount Between 1000 and 2000, Ordered by Product Name 
SELECT Product, AVG(Sales_Amount) AS Avg_Sale
FROM SALES_DATA
GROUP BY Product
HAVING AVG(Sales_Amount) BETWEEN 1000 AND 2000
ORDER BY Product;


--2. Display Years with More Than 1 Orders from Each Region 

--3. Display Regions with Average Sales Amount Above 1500 in Year 2023 sort by amount in descending. 
SELECT Region, AVG(Sales_Amount) AS Avg_Sale
FROM SALES_DATA
WHERE Year = 2023
GROUP BY Region
HAVING AVG(Sales_Amount) > 1500
ORDER BY Avg_Sale DESC;


--4. Find out region wise duplicate product. 
SELECT Region, Product, COUNT(*) AS Occurrences
FROM SALES_DATA
GROUP BY Region, Product
HAVING COUNT(*) > 1;


--5. Find out year wise duplicate product.
SELECT Year, Product, COUNT(*) AS Occurrences
FROM SALES_DATA
GROUP BY Year, Product
HAVING COUNT(*) > 1;
