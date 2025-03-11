-- Total Sales
SELECT  
    CONCAT(ROUND(SUM(Total_Sales) / 1000000, 2), ' M') AS Total_Sales_Millions
FROM blinkit_data;


-- Average Sales
SELECT 
	ROUND(AVG(Total_Sales), 0) AS Avg_Sales
FROM blinkit_data;

-- Number of Items
SELECT 
	COUNT(*) AS Number_Of_Items
FROM blinkit_data;

-- Average Rating
SELECT 
	ROUND(AVG(Rating), 2) AS Avg_Rating
FROM blinkit_data