-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Index\dbo.OrderDate.sql
-- PRIMARY OBJECT     : dbo.OrderDate (Index)
-- CREATED DATE       : 03/01/2024 12:31:08.415
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE NONCLUSTERED INDEX OrderDate
    ON dbo.Orders(OrderDate)
  WITH (
        PAD_INDEX = OFF
       )
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID(N'dbo.Orders') AND name=N'OrderDate')
    PRINT N'<<< CREATED INDEX dbo.Orders.OrderDate >>>'
ELSE
    PRINT N'<<< FAILED CREATING INDEX dbo.Orders.OrderDate >>>'
go
