-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Index\dbo.CustomersOrders.sql
-- PRIMARY OBJECT     : dbo.CustomersOrders (Index)
-- CREATED DATE       : 03/01/2024 12:31:08.398
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE NONCLUSTERED INDEX CustomersOrders
    ON dbo.Orders(CustomerID)
  WITH (
        PAD_INDEX = OFF
       )
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID(N'dbo.Orders') AND name=N'CustomersOrders')
    PRINT N'<<< CREATED INDEX dbo.Orders.CustomersOrders >>>'
ELSE
    PRINT N'<<< FAILED CREATING INDEX dbo.Orders.CustomersOrders >>>'
go
