-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Index\dbo.ShippedDate.sql
-- PRIMARY OBJECT     : dbo.ShippedDate (Index)
-- CREATED DATE       : 03/01/2024 12:31:08.425
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE NONCLUSTERED INDEX ShippedDate
    ON dbo.Orders(ShippedDate)
  WITH (
        PAD_INDEX = OFF
       )
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID(N'dbo.Orders') AND name=N'ShippedDate')
    PRINT N'<<< CREATED INDEX dbo.Orders.ShippedDate >>>'
ELSE
    PRINT N'<<< FAILED CREATING INDEX dbo.Orders.ShippedDate >>>'
go
