select  customer_id
from (
    select customer_id,count(distinct product_key) as cnt
    from Customer
    group by customer_id

) as new
where cnt in (
    select count(*)
    from product
)