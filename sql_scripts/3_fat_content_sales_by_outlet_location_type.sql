-- 3. Fat Content wrt Outlet for Total Sales

SELECT 
    Outlet_Location_Type,
    ROUND(SUM(CASE 
			WHEN Item_Fat_Content = 'Low Fat' 
            THEN Total_Sales 
            ELSE 0 
		END), 2) AS `Low Fat Sales`,
    ROUND(SUM(CASE 
			WHEN Item_Fat_Content = 'Regular' 
            THEN Total_Sales 
            ELSE 0 
		END), 2) AS `Regular Sales`
FROM blinkit_data
GROUP BY Outlet_Location_Type
ORDER BY Outlet_Location_Type;
