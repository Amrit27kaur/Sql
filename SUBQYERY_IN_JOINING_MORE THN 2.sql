use HR

--find employees having salary greater thn the average salary

select first_name,last_name from employees where salary > (select Avg(salary) from employees );

select Max(salary) from employees 


--find the name of employees who are working as accountant

select first_name,last_name from employees where job_id=(select job_id from jobs where job_title='Accountant');

select job_id from jobs where job_title='Accountant';

select first_name,last_name from employees AS E INNER JOIN jobs AS J ON E.job_id= J.job_id where job_title='Accountant';

--find detial of employee where first name contain e as second character from the end of the string

select * from employees where first_name like '%E_';


--IN operator
--find the manager id from departments  shiiping,it and Finance (WITH OR )

select manager_id from departments where department_name='shipping'
OR department_name='IT'
OR department_name='Finance';

--with IN operator
select manager_id from departments where department_name IN ('shipping','IT','Finance');

--with NOT IN operator
select manager_id from departments where department_name NOT IN ('shipping','IT','Finance');


--list the country name in which relgion id is greater thn 1
select country_name from countries where region_id > 1;

--list all the department name of the locations in USA using subqueries
select department_name from departments where location_id IN 
(select location_id from locations where country_id ='US');

select country_id from locations where country_id ='US';

--find employees who are manager 
select manager_id from employees

select first_name,last_name from employees where employee_id IN (select manager_id from employees)
select * from employees



--JOINING OF TABLES----
--LIST ALL CITY OF REGION ASIA
SELECT * FROM REGIONS

SELECT CITY FROM locations AS L JOIN countries AS C 
ON L.country_id=C.country_id 
JOIN regions AS R ON C.region_id=R.region_id WHERE R.region_name='ASIA';


--SHOW THE DETAIL OF THOSE EMPLOYEE WHO CONTAIN LETTER M IN FIRST NAME ALSO DISPALY LAST NAME, 
--DEPARTMENT NAME,CITY AND STATE_PRIVINCE


SELECT E.FIRST_NAME,E.LAST_NAME,D.DEPARTMENT_NAME,L.CITY,L.STATE_PROVINCE FROM employees AS E 
INNER JOIN departments AS D
ON E.department_id = D.department_id INNER JOIN 
locations AS L ON L.location_id=D.location_id 
WHERE E.FIRST_NAME LIKE '%M';

--WHAT IS DEN RAPHAELY DEPARTMENT NAME--
SELECT E.FIRST_NAME, E.LAST_NAME,D.department_name FROM employees AS E JOIN DEPARTMENTS AS D ON 
E.DEPARTMENT_ID =D.DEPARTMENT_ID WHERE FIRST_NAME ='DEN' AND E.last_name='RAPHAELY';

--GROUP BY, HAVING CLAUSE 
--SHOW THE NAME OF THE DEPATMENTS IN WHICH THE NUMBER OF EMPLOYEES 
--ARE MORE THAN 3

SELECT COUNT(*) AS 'EMPLOYEES',D.department_name FROM employees AS E JOIN departments AS D
ON D.department_id=E.department_id 
GROUP BY D.department_name
HAVING COUNT(*)>3;

--SHOW REGION NAME IN WHICH THE COMPANY IS WORKING IN MORE THN 4 CITIES
SELECT R.REGION_NAME,COUNT(L.city) FROM regions AS R INNER JOIN  countries AS C 
ON R.region_id=C.region_id 
INNER JOIN  locations AS L ON L.country_id=C.country_id 
GROUP BY region_name HAVING COUNT(L.CITY)>4;




