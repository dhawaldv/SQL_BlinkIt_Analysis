-- 1. Total Sales by Fat Content

SELECT 
	Item_Fat_Content,
    CONCAT(ROUND(SUM(Total_Sales) / 100000, 2), ' L') AS Total_Sales_Lakhs,
    ROUND(AVG(Total_Sales), 1) AS Avg_Sales,
    COUNT(*) AS Number_Of_Items, 
    ROUND(AVG(Rating), 2) AS Avg_Rating
FROM blinkit_data
GROUP BY Item_Fat_Content
ORDER BY Total_Sales_Lakhs DESC; 