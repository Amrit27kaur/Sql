create database Task1

use Task1
--Create a student table

create table student(S_id varchar(20) not null primary key, Fname varchar(50)not null,Lname varchar(50)not null,Home_Address_Street varchar(50)not null,Home_Address_City varchar(50)not null,Home_Address_Zipcode varchar(50)not null,Date_of_Birth varchar(20)not null,sex varchar(10)not null,Category varchar(20)not null,Nationality varchar(40)not null,Special_Needs varchar(40)not null,Current_Status varchar(30)not null,Course_Number_id varchar(50)not null,Comments varchar(50)null,Room_Category varchar(30)not null,A_id varchar(20)not null,Flat_number varchar(20)null,Hall_of_residence varchar(30)null,Contact_id varchar(20)not null);
drop table student;
select * from student;
--insert a data in student table

insert into student values('s1','John','Doe','1 bonnie bras','Brampton','l6y0y5','12-10-1991','male','junior','Canadian','abc','placed','c1','asdffeee','Flat','a1','f1','','c1');

insert into student values('s2','Jani','Due','11 LeaderShip ','Brampton','l5y0y4','11-11-1992','Female','graduate','Indain','abced','waiting','c2','asdffeee','Waiting','a2','','','c2');
insert into student values('s3','Joe','Smith','12 Arrowpoint','Brampton','l5d0y5','12-12-1993','male','sophomore','Pakistan','rff','placed','c3','asdffeee','Hall','a3','','r1','c3');
insert into student values('s4','Marry','Silly','1 Beaconcrest','Brampton','y0y5d4','10-10-1994','Female','junior','Canadian','asde','placed','c4','asdffeee','Flat','a4','f1','','c4');
insert into student values('s5','Mani','Mariam','30 Faywood','Brampton','f6b0b3','09-09-1995','male','graduate','China','sdsd','placed','c5','asdffeee','Hall','a5','','r11','c5');
insert into student values('s6','Anne','Dolly','22 Timbercove','Brampton','l6b8b4','08-08-1996','Female','junior','Canadian','fffg','placed','c6','asdffeee','Flat','a6','f1','','c6');
insert into student values('s7','Aahan','Dubby','14 Breeli','Brampton','a8c0c4','07-07-1997','male','sophomore','Indian','dfeff','placed','c7','asdffeee','Flat','a7','f1','','c7');
insert into student values('s8','Alex','Hebert','23Dusk drive','Brampton','d9y7f4','12-06-1998','male','junior','Canadian','efefr','placed','c8','asdffeee','Flat','a8','f1','','c8');
insert into student values('s9','Petter','Alexdr','15 Tatra','Brampton','j4g8f6','05-10-1991','male','junior','Afganisitan','hthth','placed','c9','asdffeee','Hall','a9','','r2','c9');
insert into student values('s10','Jally','Sina','24 Bittersweet','Brampton','D7f7f9','08-04-1989','Female','graduate','Canadian','rggr','waiting','c10','asdffeee','Waiting','a10','','','c10');


drop table student;

--table of Advisor

create table Advisor(A_id varchar(10)not null primary key,Full_Name varchar(30)not null,Position varchar(30)not null,Name_Of_Dept varchar(30)not null,Phone_Number varchar(30)not null,Office_Location varchar(30)not null,Office_Number varchar(30)not null);
drop table Advisor;
select * from Advisor;

--data of Advisor
insert into Advisor values('a1','Petter Smith','Hall Adminstrator','Hall manager','648-998-9999','Hall','1888-888-3454');
insert into Advisor values('a2','Waliam Sheikh','Hall Adminstrator','Hall manager','648-998-9999','Hall','1888-888-3454');
insert into Advisor values('a3','Petter Smith','Hall Adminstrator','Hall manager','648-998-9999','Hall','1888-888-3454');
insert into Advisor values('a4','Petter Smith','Hall Adminstrator','Hall manager','648-998-9999','Hall','1888-888-3454');
insert into Advisor values('a5','Petter Smith','Hall Adminstrator','Hall manager','648-998-9999','Hall','1888-888-3454');
insert into Advisor values('a6','Petter Smith','Hall Adminstrator','Hall manager','648-998-9999','Hall','1888-888-3454');
insert into Advisor values('a7','Petter Smith','Hall Adminstrator','Hall manager','648-998-9999','Hall','1888-888-3454');
insert into Advisor values('a8','Petter Smith','Hall Adminstrator','Hall manager','648-998-9999','Hall','1888-888-3454');
insert into Advisor values('a9','Petter Smith','Hall Adminstrator','Hall manager','648-998-9999','Hall','1888-888-3454');
insert into Advisor values('a10','Petter Smith','Hall Adminstrator','Hall manager','648-998-9999','Hall','1888-888-3454');

create table Hall_of_resi(Hall_id varchar(30)not null,Name varchar(30)not null,Address varchar(30)not null,Telephone_Number varchar(30)not null,Manager varchar(30)not null);

select * from Hall_of_resi;

create table Hall_Of_room(Hall_id varchar(30)not null,Room_no varchar(30)not null,Place_no varchar(30)not null,Monthly_rent varchar(30)not null);

select * from Hall_Of_room;

create table Flat(Flat_number_id varchar(30)not null,Address varchar(30)not null,Room_number varchar(30)not null);

select * from Flat;

create table Lease(Lease_number_id varchar(30)not null,Duration_of_lease varchar(30)not null,Name_of_student varchar(30)not null,S_id varchar(30)not null,Hall_number varchar(30)not null,Flat_number varchar(30)not null,Address varchar(30)not null,Date_of_entry varchar(30)not null,leave_entry varchar(30)not null);

select * from Lease;
drop table Lease;

create table Invoice(S_id varchar(30)not null,In_id varchar(30)not null,Quater varchar(30)not null,Payment_due varchar(30)not null,S_Full_Name varchar(30)not null,Flat_Number varchar(30)not null,Address varchar(30)not null,Lease_Number_id varchar(30)not null);
select * from Invoice;

create table Payment(Payment_id varchar(30)not null,In_id varchar(30)not null,S_id varchar(30)not null,Date_of_Payment varchar(30)not null,Method_of_Payment varchar(30)not null,Date_of_First_Remainder varchar(30)not null,Date_of_Second_Remainder varchar(30)not null);
select * from Payment;

create table Student_Flat_Inspection(S_F_id varchar(30)not null, Name_of_Staff varchar(30)not null,Date_of_Inspection varchar(30)not null,Satisfactory_condition varchar(30)not null,Comments varchar(30)not null,Flat_Number varchar(30)not null);
select * from Student_Flat_Inspection;

create table Course(Course_Number_id varchar(30)not null,Course_tittle varchar(30)not null,Year varchar(30)not null,Instructor varchar(30)not null,Room_number varchar(30)not null,Department_name varchar(30)not null);
select * from Course;

create table Accomdation_Staff(Acc_Staff_id varchar(30)not null,Fname varchar(30)not null,Lname varchar(30)not null,Home_Address_Street varchar(50)not null,Home_Address_City varchar(50)not null,Home_Address_Zipcode varchar(50)not null,Date_of_Birth varchar(20)not null,sex varchar(10)not null,Position varchar(20)not null,Location varchar(20)not null);
select * from Accomdation_Staff;

Create table Contact(Contact_id varchar(20)not null, Fname varchar(20)not null, Lname varchar(20)not null,Relation_with_Student varchar(20)not null,Home_Address_Street varchar(50)not null,Home_Address_City varchar(50)not null,Home_Address_Zipcode varchar(50)not null,Phone_no varchar(30)not null); 
select * from Contact;



