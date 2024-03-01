-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Index\dbo.ShipPostalCode.sql
-- PRIMARY OBJECT     : dbo.ShipPostalCode (Index)
-- CREATED DATE       : 03/01/2024 12:31:08.422
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE NONCLUSTERED INDEX ShipPostalCode
    ON dbo.Orders(ShipPostalCode)
  WITH (
        PAD_INDEX = OFF
       )
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID(N'dbo.Orders') AND name=N'ShipPostalCode')
    PRINT N'<<< CREATED INDEX dbo.Orders.ShipPostalCode >>>'
ELSE
    PRINT N'<<< FAILED CREATING INDEX dbo.Orders.ShipPostalCode >>>'
go
