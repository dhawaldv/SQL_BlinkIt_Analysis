-- 2. Total Sales by Item Type
SELECT 
	Item_Type,
    ROUND(SUM(Total_Sales), 1) AS Total_Sales,
    ROUND(AVG(Total_Sales), 1) AS Avg_Sales,
    COUNT(*) AS Number_Of_Items, 
    ROUND(AVG(Rating), 2) AS Avg_Rating
FROM blinkit_data
GROUP BY Item_Type
ORDER BY Total_Sales DESC