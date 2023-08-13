select * from pizza_sales
-- select SUM(total_price) as Total_Revenue from pizza_sales

-- select SUM(total_price) / COUNT(Distinct order_id) as Avg_Order_Value from pizza_sales

-- Select SUM(quantity) as Total_Pizza_Sold from pizza_sales

-- Select CAST(CAST(SUM(quantity) as decimal(10,2)) / 
-- CAST(COUNT(Distinct order_id) as decimal(10,2)) as decimal(10,2)) as Avg_Pizzas_Per_Order from pizza_sales

-- select Datename(DW, order_date) as order_day, COUNT(DISTINCT order_id) as Total_orders
-- from pizza_sales
-- Group by Datename(DW, order_date)

-- select datename(Month, order_date) As Month_Name, COUNT(Distinct order_id) as Total_Orders
-- from pizza_sales
-- group by Datename(Month, order_date)
-- order by Total_orders desc

-- select pizza_category, SUM(total_price) as Total_sales, sum(total_price) * 100 / 
-- (SELECT sum(total_price) from pizza_sales) as PCT
-- from pizza_sales
-- where month(order_date) = 1
-- group by pizza_category

-- select pizza_size, Cast(sum(total_price) as decimal(10,2)) as Total_sales, Cast(sum(total_price) * 100 /
-- (Select sum(total_price) from pizza_sales where DATEPART(quarter, order_date)=1) as Decimal(10,2)) as PCT
-- from pizza_sales
-- where DATEPART(quarter, order_date)=1 
--group by pizza_size
-- order by PCT desc

-- select TOP 5 pizza_name, SUM(total_price) as Total_Revenue 
-- From pizza_sales
-- group by pizza_name
-- order by Total_Revenue desc

-- select TOP 5 pizza_name, SUM(total_price) as Total_Revenue 
-- From pizza_sales
-- group by pizza_name
-- order by Total_Revenue asc

-- select TOP 5 pizza_name, COUNT(Distinct order_id) as Total_Orders 
-- From pizza_sales
-- group by pizza_name
-- order by Total_Orders