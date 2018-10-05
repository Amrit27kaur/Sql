Use Task2;
select * from Customers
--stored procdure
create procedure sp_Customer as select * from Customers where city = 'London';
exec sp_Customer;

create procedure sp_Cust @city_by_user varchar(50) as select * from Customers where city = @city_by_user;
exec sp_Cust @city_by_user='London';


--indexs
select * from products 
create clustered index ix_unitPrice on products(unitPrice asc)

create nonclustered index ix_UnitInStock on products(UnitsInStock asc)