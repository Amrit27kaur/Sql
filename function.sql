

--stored procedure

CREATE PROCEDURE Addition 
@num1 int,@num2 int,@num3 int,
@result int OUT 
AS 
SET @result=@num1+@num2+@num3

declare @result int
exec Addition 9,4,5,@result OUT
select @result

--function
create Function FunctionAdd(@value1 int,@value2 int,@value3 int)
RETURNS INT
AS
BEGIN 
DECLARE @total int
SET @total=@value1+@value2+@value3
RETURN @total
END;

SELECT dbo.FunctionAdd(3,4,5);


--Average of 3 number
create Function FunctionAver(@value1 int,@value2 int,@value3 int)
RETURNS INT
AS
BEGIN 
DECLARE @Avg int

SET @Avg=(@value1+@value2+@value3)/3;
RETURN @Avg
END;

SELECT dbo.FunctionAver(3,4,5);


use HR
go

---create a table valued function that returns a list of employees from a specific department
create function EmployeeList(@deparmentname varchar(30))
RETURNS table 
AS

   Return(select first_name,last_name from employees AS E 
   INNER JOIN departments AS D
   ON
   E.department_id=D.department_id 
   where D.department_name=@deparmentname
   );
end

select * from EmployeeList('shipping');

---
select first_name,last_name from employees AS E 
   INNER JOIN departments AS D
   ON
   E.department_id=D.department_id 
   where D.department_name='shipping'

   --cretae table valued function between maximum and minimum for specfic job title of company

   create function empSalary(@jobtitle varchar(35))
   RETURNS table
   AS

   return(select max_salary-min_salary AS difference from jobs where job_title=@jobtitle );
   
   --
   select max_salary-min_salary from jobs where job_title='Public Accountant';
   select * from jobs

   SELECT * FROM empSalary('Public Accountant');

   ---sTRING FUNCTION 
   select UPPER('abc');
   select LOWER('ABC');
   select len('hello world');
   select substring('hello',3,5);

   select substring(first_name ,1,1) + last_name As 'full Name' from employees;

--date function
   select SYSDATETIME();

   --which year

   select DATEPART(YEAR,'2007-10-30');
   select DATEPART(MONTH,'2007-10-30');
   select DATEPART(DAY,'2007-10-30');

   --FIND NO. OF EMPLOYEES HIRED IN 2005
   Select DATEPART(YEAR,hire_date) AS years from employees where DATEPART(YEAR,hire_date)='2005';

   Select count(*) AS years from employees where DATEPART(YEAR,hire_date)='2005';

   Select count(*) AS years from employees where hire_date between '2005-01-01' and '2005-12-31';

   Select first_name,last_name, DATEDIFF(YEAR,hire_date,SYSDATETIME())AS experience from employees;
