-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Index\dbo.ShippersOrders.sql
-- PRIMARY OBJECT     : dbo.ShippersOrders (Index)
-- CREATED DATE       : 03/01/2024 12:31:08.431
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE NONCLUSTERED INDEX ShippersOrders
    ON dbo.Orders(ShipVia)
  WITH (
        PAD_INDEX = OFF
       )
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID(N'dbo.Orders') AND name=N'ShippersOrders')
    PRINT N'<<< CREATED INDEX dbo.Orders.ShippersOrders >>>'
ELSE
    PRINT N'<<< FAILED CREATING INDEX dbo.Orders.ShippersOrders >>>'
go
