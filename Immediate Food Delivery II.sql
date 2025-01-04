select  round(100.0*sum(iif(order_date=customer_pref_delivery_date,1.0,0.0))/count(customer_id),2) as immediate_percentage
from
Delivery d
where  d.order_date =(
    select min(d2.order_date)
    from delivery d2
   where d2.customer_id=d.customer_id
   