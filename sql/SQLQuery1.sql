use LearningSQL;
select * from employee;
select  emp_fname as 'First name' , emp_lname as 'last name' from employee where dept_no='d1';
select  emp_fname + emp_lname as 'full name' from employee where dept_no='d1';