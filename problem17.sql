select p.project_id,round(avg(1.0*e.experience_years ),2) as average_years
from project p
inner join
employee e
on p.employee_id=e.employee_id
group by p.project_id
order by p.project_id