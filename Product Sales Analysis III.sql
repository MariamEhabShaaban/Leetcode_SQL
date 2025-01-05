select s.product_id , first_year , quantity , price 
from(
select 
 s.product_id , min(year) as first_year
 from Sales s
 group by  s.product_id
)as new
inner join
Sales s
on new.product_id=s.product_id and s.year=first_year