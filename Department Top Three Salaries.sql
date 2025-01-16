
select Department,Employee,salary 
from(
  select d.name as[Department],e.name as Employee,e.salary ,dense_rank() over(partition by departmentId order by salary desc ) as dr
  from employee e
  inner join
  department d
  on d.id=e.departmentId
)as new_table
where dr<=3