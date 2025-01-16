 select distinct p.product_id,isnull(n_t.new_price,10) as price
 from  products p
 left join (
    select *
    from( select * ,row_number() over(partition by  product_id order by change_date desc ) as rn
    from products p2
    where change_date<='2019-08-16'
 ) as new_table
  where rn=1
 ) as n_t
 on n_t.product_id=p.product_id




