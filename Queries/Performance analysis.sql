/* Analyze the yearly performance of the product by comparing their sales
to both avg sales performance of the product and previous years sales */
with yearly_product_sales as (
select
	year(f.order_date) as order_year,
	p.product_name,
	sum(f.sales_amount) as current_sales
from dbo.fact_sales f
left join dbo.dim_products p
on f.product_key = p.product_key

where f.order_date is not null
group by year(f.order_date), p.product_name
)
select
order_year,
product_name,
current_sales,
avg(current_sales) over(partition by product_name) as average_sales,
current_sales - avg(current_sales) over(partition by product_name) as diff_avg,
case when current_sales - avg(current_sales) over(partition by product_name)> 0 then 'above_avg'
	 when current_sales - avg(current_sales) over(partition by product_name)< 0 then 'below_avg'
	 else 'avg'
end avg_change,
lag(current_sales) over(partition by product_name order by order_year) as prev_year_sales,
current_sales - lag(current_sales) over(partition by product_name order by order_year) as diff_between_prev_year,
case when current_sales - lag(current_sales) over(partition by product_name order by order_year)> 0 then 'increase'
	 when current_sales - lag(current_sales) over(partition by product_name order by order_year)< 0 then 'decrease'
	 else 'stagnant'
end as prev_year_change
from yearly_product_sales
order by product_name, order_year