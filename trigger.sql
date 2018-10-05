
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER trg_product
   ON  product
   AFTER insert
AS 
BEGIN
	SET NOCOUNT ON;
	declare @productID int;
	declare @productName varchar(20);
	declare @productDescription varchar(50);

	select  @productID=productlist.productID from inserted productlist;
	select  @productName=productlist.productName from inserted productlist;
	select  @productDescription=productlist.productDescription from inserted productlist;

	insert into productHistory values(@productID,@productName,@productDescription);

END;
GO
