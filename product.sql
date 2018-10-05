create database product
use product

create table product(productID int not null,
                     productName varchar(30)not null,
					 productDescription varchar(50)not null);
drop table product;
select * from product

insert into product values(2,'amrit','prdlkodke');
select * from productHistory;

create table productHistory(productID int not null,
                            productName varchar(30)not null,
							productDescription varchar(50)not null);

drop table productHistory


insert into product values(4,'sdadDds','fdfdfdffff');






