-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Index\dbo.OrderID.sql
-- PRIMARY OBJECT     : dbo.OrderID (Index)
-- CREATED DATE       : 03/01/2024 12:31:08.367
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE NONCLUSTERED INDEX OrderID
    ON dbo.[Order Details](OrderID)
  WITH (
        PAD_INDEX = OFF
       )
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID(N'dbo.[Order Details]') AND name=N'OrderID')
    PRINT N'<<< CREATED INDEX dbo.Order Details.OrderID >>>'
ELSE
    PRINT N'<<< FAILED CREATING INDEX dbo.Order Details.OrderID >>>'
go
