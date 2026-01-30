with product_segment as (
select
	product_key,
	product_name,
	cost,
	case when cost < 100 then 'below 100'
		 when cost between 100 and 1000 then '100-1000'
		 when cost > 1000 then 'above 1000'
		 else 'luxury'
end product_range
from dbo.dim_products
)

select 
product_range,
count(product_key) as total_products
from product_segment
group by product_range

