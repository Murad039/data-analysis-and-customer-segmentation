--- calculate total sales per month
--- and the running total of sales over time

select
	Order_date,
	total_sales,
	sum(total_sales) over(order by Order_date) as running_total_sales
from (
select
	Datetrunc(year, order_date) as Order_date,
	sum(sales_amount) as total_sales
from dbo.fact_sales
where order_date is not null
group by Datetrunc(year, order_date) ) t