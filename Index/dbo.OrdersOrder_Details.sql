-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Index\dbo.OrdersOrder_Details.sql
-- PRIMARY OBJECT     : dbo.OrdersOrder_Details (Index)
-- CREATED DATE       : 03/01/2024 12:31:08.374
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE NONCLUSTERED INDEX OrdersOrder_Details
    ON dbo.[Order Details](OrderID)
  WITH (
        PAD_INDEX = OFF
       )
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID(N'dbo.[Order Details]') AND name=N'OrdersOrder_Details')
    PRINT N'<<< CREATED INDEX dbo.Order Details.OrdersOrder_Details >>>'
ELSE
    PRINT N'<<< FAILED CREATING INDEX dbo.Order Details.OrdersOrder_Details >>>'
go
