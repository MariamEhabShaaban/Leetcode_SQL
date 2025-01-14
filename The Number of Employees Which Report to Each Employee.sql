select sup.employee_id 
from employees emp join employees sup
on emp.reports_to=sup.employee_id
