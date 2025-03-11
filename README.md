# :star2: BlinkIt Analysis :star2:
To conduct a comprehensive analysis of Blinkit's sales performance, customer satisfaction, and inventory distribution to identify key insights and opportunities for optimization using various KPIs and visualizations in Power BI.

## :point_right: KPI's Requirements
  1. Total Sales: The overall revenue generated from all items sold.
  2. Average Sales: The average revenue per sale.
  3. Number of Items: The total count of different items sold.
  4. Average Rating: The average customer rating for items sold.

## :point_right: Granular Requirements
1. Total Sales by Fat Content:
Objective: Analyze the impact of fat content on total sales.
Additional KPI Metrics: Assess how other KPIs (Average Sales, Number of Items, Average Rating) vary with fat content. 

2. Total Sales by Item Type:
Objective: Identify the performance of different item types in terms of total sales.
Additional KPI Metrics: Assess how other KPIs (Average Sales, Number of Items, Average Rating) vary with fat content.

3. Fat Content by Outlet for Total Sales:
Objective: Compare total sales across different outlets segmented by fat content.
Additional KPI Metrics: Assess how other KPIs (Average Sales, Number of Items, Average Rating) vary with fat content. 

4. Total Sales by Outlet Establishment:
Objective: Evaluate how the age or type of outlet establishment influences total sales.

5. Percentage of Sales by Outlet Size:
Objective: Analyze the correlation between outlet size and total sales.

6. Sales by Outlet Location
Objective: Assess the geographic distribution of sales across different locations.

7. All Metrics by Outlet Type:
Objective: Provide a comprehensive view of all key metrics (Total Sales, Average Sales, Number of Items, Average Rating) broken down by different outlet types.
```sql
SELECT 
	Outlet_Type,
    ROUND(SUM(Total_Sales), 1) AS Total_Sales,
    ROUND(
		SUM(Total_Sales) * 100 / (SELECT SUM(Total_Sales) FROM blinkit_data), 
        2) AS Sales_Percentage,
    ROUND(AVG(Total_Sales), 1) AS Avg_Sales,
    COUNT(*) AS Number_Of_Items, 
    ROUND(AVG(Rating), 2) AS Avg_Rating
FROM blinkit_data
GROUP BY Outlet_Type
ORDER BY Total_Sales DESC
```
![assets](assets/Granular/7_sales_by_outlet_type.png) 

## :muscle: MySQL
  
This is a guided project from [@Swapnjeet S](https://www.youtube.com/@datatutorials1) Youtube Channel
