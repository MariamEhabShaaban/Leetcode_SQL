with total as(
   select s.user_id,count(*) as tot,sum(
        iif(c.action='confirmed',1,0)
    ) as con
    from Signups s
    left join
    Confirmations c
    on c.user_id=s.user_id
    group by s.user_id
)
select user_id,round(cast(con as float)/tot,2) as confirmation_rate
from total