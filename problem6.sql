select u.unique_id ,e.name
from employees e
left outer join
employeeuni u
on u.id=e.id
