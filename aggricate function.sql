use HR

select * from employees

--sorting
select * from employees order by first_name, last_name desc;

--count
select count(*) from employees where commission_pct is NULL;

--maximum
select Max(salary) from employees;

select first_name + last_name as 'full name' from employees where salary=24000.00;

--subquery
select first_name + last_name as 'full name' from employees 
where salary=(select Max(salary) from employees);

select * from
 locations
select * from departments


--inner join
select department_name from departments AS D 
inner join locations AS L 
ON D.location_id=L.location_id
where state_province='california';


--subquery method
select department_name from departments where location_id =1500;
select location_id from locations where state_province = 'california';

--other subquery method
select department_name from departments where location_id =(
select location_id from locations where state_province = 'california');


--count the number off employeees in each department

select count(*) from employees 
where commission_pct IS NULL;

select department_id,count(*) from employees 
where commission_pct IS NULL
 group by department_id;

 --show the name of department along with no of employee in each depaertment
 select department_name,count(*) from departments AS D
 INNER JOIN employees AS E 
 ON D.department_id=e.department_id 
 group by D.department_name;

 --show the name of employees who com=ntain letter K to their first name
 select * from employees where first_name like 'k%';

 select * from employees where first_name like '%k';

 select * from employees where first_name like '%k%';