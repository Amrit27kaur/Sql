create database student;
use student;
create table student(id integer not null,
                    status varchar(50)null,
					name varchar(50)not null,
                   email varchar(50)not null);

insert into student values(1,'enroled','jane','johndoe@gmail.com');
insert into student values(1,'enroled','john','johndoe@gmail.com');
select * from student;
delete from student where name='john';
select * from student;
insert into student values(2,'enroled','jane','johndoe@gmail.com');
select * from student;
delete from student where name='jane';
select * from student;
drop table student;

--default value
create table student(id integer not null,
                    status varchar(50)null default 'enrolled',
					name varchar(50)not null,
                   email varchar(50)not null);

insert into student(id,status,name,email)values(1,'graduated','john','john@gmail.com');
insert into student(id,name,email)values(2,'john','john@gmail.com');
select * from student;

drop table student;

--auto increment and add age check constraint
create table student(id integer identity(1,1) primary key,
                    status varchar(50)null,
					name varchar(50)not null,
					age integer not null,
                   email varchar(50)not null,
				   check (age between 18 and 65));

insert into student(status,name,email,age)values('graduated','john','john@gmail.com',10);
insert into student(name,email)values('jane','john@gmail.com');
select * from student;