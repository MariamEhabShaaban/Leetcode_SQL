

with man_id as (select  e1.managerid,count(e1.managerid) as count
from employee e1  
inner join employee e2
on e2.id=e1.managerid
group by e1.managerid
)
select e.name 
from employee e
inner join
man_id m
on e.id=m.managerid and m.count>=5
