select  round(1.0*count(distinct a1.player_id)/(select count ( distinct player_id) from activity),2) as  fraction
from activity a1
inner join
activity a2
on a1.player_id=a2.player_id where dateadd(day,1,a1.event_date)=a2.event_date
