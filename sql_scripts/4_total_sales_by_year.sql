-- 4. Total Sales by Outlet Establishment

SELECT 
	Outlet_Establishment_Year,
    CONCAT(ROUND(SUM(Total_Sales) / 1000, 2), ' K') AS Total_Sales_Thousands
FROM blinkit_data
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year ASC; 