# unions in sql are used to join rows


select * from employee_demographics;
select * from employee_salary;


select first_name,last_name,"Old Employee" as Label from employee_demographics
where birth_date=1970
union
select first_name,last_name,"Old Employee" as Label from employee_salary 
where salary>100000;

