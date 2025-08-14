create database task6;
use task6;
select * from sales


alter table sales drop column Country,Customer_Name;

select * from sales;

SELECT 
    YEAR(CONVERT(DATE, [Order_Date], 101)) AS OrderYear,
    MONTH(CONVERT(DATE, [Order_Date], 101)) AS OrderMonth,
    SUM(Sales) AS TotalRevenue
FROM sales
GROUP BY 
    YEAR(CONVERT(DATE, [Order_Date], 101)),
    MONTH(CONVERT(DATE, [Order_Date], 101))
ORDER BY OrderYear, OrderMonth;


SELECT 
    YEAR(CONVERT(DATE, [Order_Date], 101)) AS OrderYear,
    MONTH(CONVERT(DATE, [Order_Date], 101)) AS OrderMonth,
    COUNT(DISTINCT [Order_ID]) AS OrderVolume
FROM sales
GROUP BY 
    YEAR(CONVERT(DATE, [Order_Date], 101)),
    MONTH(CONVERT(DATE, [Order_Date], 101))
ORDER BY OrderYear, OrderMonth;
