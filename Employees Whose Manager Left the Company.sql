
select employee_id
from employees 
where manager_id not in (
    select employee_id
from employees 
) and manager_id  is not null and salary <30000
order by employee_id