--create triger for producthistory  in which it should not alowed delete option
use product
select * from productHistory;
delete from productHistory where productID=1;


create TRIGGER del_trigger
   ON  productHistory
  instead of Delete

AS 
BEGIN
	--raiserror('you cannot perform delete',16,1);
	--rollback;
	raiserror('you cannot perform delete',12,244);
	rollback;

END;

--create the trigger on sql server that doen,t allow to delete database


