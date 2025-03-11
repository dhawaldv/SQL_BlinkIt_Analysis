-- 6. Sales by Outlet Location

SELECT 
	Outlet_Location_Type,
    ROUND(SUM(Total_Sales), 1) AS Total_Sales,
    ROUND(
		SUM(Total_Sales) * 100.0 / (SELECT SUM(Total_Sales) FROM blinkit_data), 
        2) AS Sales_Percentage,
    ROUND(AVG(Total_Sales), 1) AS Avg_Sales,
    COUNT(*) AS Number_Of_Items, 
    ROUND(AVG(Rating), 2) AS Avg_Rating
FROM blinkit_data
GROUP BY Outlet_Location_Type
ORDER BY Total_Sales DESC