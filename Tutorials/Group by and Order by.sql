# group by ka matlab ha k koi aggregate function lga k hum values ko group kre 

select * from Parks_and_Recreation.employee_salary;

select occupation, max(salary) from employee_salary group by occupation;

# order by is used to sort result in ascending or descending order


select * from employee_salary order by salary DESC;