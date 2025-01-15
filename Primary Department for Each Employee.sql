select distinct e1.employee_id ,e1.department_id as department_id
from employee e1

where e1.primary_flag='Y' 
union
select e2.employee_id,min(e2.department_id ) as  department_id
from employee e2
group by e2.employee_id
having count(e2.employee_id)=1