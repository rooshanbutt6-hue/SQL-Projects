# inner joins is used to extract the rows which are similar in each table


select * from employee_demographics;

select * from employee_salary;


select * from employee_demographics as dem join employee_salary as sal on dem.employee_id = sal.employee_id;

# jaha pe column same ho gy waha pe hum alias use kre gy



# outer join 
# left join select all and common on right
# right join select all and common on left

select * from employee_demographics as dem right join employee_salary as sal on dem.employee_id = sal.employee_id;

select * from employee_demographics as dem left join employee_salary as sal on dem.employee_id = sal.employee_id;


#self join is used if we want to compare two columns from same table

#joining multiple tables







