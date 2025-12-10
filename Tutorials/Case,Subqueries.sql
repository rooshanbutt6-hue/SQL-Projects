select * table
case 
when salary<50000  then salary + (0.05)
second condition
third condition
End
from Employee_salary


# subqueries



Select first name,last name from employee_salary
Where salary>
(Select Avg(salary) from employee_salary group by gender);


