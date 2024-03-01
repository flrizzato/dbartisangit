-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Index\dbo.CustomerID.sql
-- PRIMARY OBJECT     : dbo.CustomerID (Index)
-- CREATED DATE       : 03/01/2024 12:31:08.392
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE NONCLUSTERED INDEX CustomerID
    ON dbo.Orders(CustomerID)
  WITH (
        PAD_INDEX = OFF
       )
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID(N'dbo.Orders') AND name=N'CustomerID')
    PRINT N'<<< CREATED INDEX dbo.Orders.CustomerID >>>'
ELSE
    PRINT N'<<< FAILED CREATING INDEX dbo.Orders.CustomerID >>>'
go
