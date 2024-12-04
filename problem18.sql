
with us as (
   select count (user_id) as tot
    from users
)

select contest_id,round((count(distinct r.user_id)*1.00)/us.tot*100,2) as percentage
from register r ,us
group by contest_id,us.tot
order by percentage desc,contest_id asc