-- 5. Percentage of Sales by Outlet Size

SELECT 
    Outlet_Size, 
    ROUND(SUM(Total_Sales) ,2) AS Total_Sales,
    ROUND(
		SUM(Total_Sales) * 100.0 / (SELECT SUM(Total_Sales) FROM blinkit_data), 
        2) AS Sales_Percentage
FROM blinkit_data
GROUP BY Outlet_Size
ORDER BY Total_Sales DESC;
