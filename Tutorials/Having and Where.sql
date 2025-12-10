# where is used to select jaha pe and having is used for aggregrate function


Select * from Parks_and_Recreation.employee_demographics;


select age,AVG(age) from employee_demographics where name LIKE "A%" group by age having AVG(age)>30;
