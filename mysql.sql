create database mysql101;

use mysql101;
show tables;
create table Employee(Emp_id integer, Emp_Fname varchar(40),Emp_Lname varchar(50),Phone_no varchar(15),Address varchar(50));
insert into Employee values(1,'doe','John','1234567898','dlflsdjlsj');
select * from Employee;

create table salary(Emp_id integer,Emp_salary varchar(30), benefit integer,Salary_id integer);
insert into salary values(1,'10000',1000,11);
select * from salary;
create table online_order(Item_id int auto_increment unique,
                        customer_address varchar(30),
                           in_out varchar(30), 
                          order_no varchar(30),
                           bill_information int);
