# limit how many rows we want


select * from Parks_and_Recreation.employee_salary;

select * from Parks_and_Recreation.employee_salary limit 2,5;



# as is naming column



Select gender,Avg(age)from employee_demographics as avg_age group by gender having Avg (age) >34;