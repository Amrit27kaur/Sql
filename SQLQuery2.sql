create database books;

use books;

create table booklist(id integer identity (1,1)primary key,
                           book_tittle varchar(50),
						   book_author varchar(50),
						   publish_date varchar(50),
						   description varchar(50));

insert into booklist values('Java','david Holmes','May-2005','Programming Language');
drop table booklist;
select * from booklist;
insert into booklist values('C#','Christian Nagel','May-2016','Programming Language');
insert into booklist values('C++','Bjarne Stroustrup','May-2005','Programming Language');
insert into booklist values('MySQL','Ulf Michael Widenius','3-March-1962','Database');
insert into booklist values('JavaScript','Eich','10-May-2005','Programming Language');
insert into booklist values('.Net','Mario Heward','May-2005','Programming Language');
insert into booklist values('SqlServer','Jonathan Kehayias','May-1975','Database');
insert into booklist values('Php','Rasmus Lerdorf','22 November 1968','Programming Language');
insert into booklist values('Jquery','John Resig','26-August-2006','Programming Language');
insert into booklist values('Wamp','Holmes david','May-2005','Programming Language');


select * from booklist where book_author like '%Holmes%';
