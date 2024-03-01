-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Index\dbo.ProductID.sql
-- PRIMARY OBJECT     : dbo.ProductID (Index)
-- CREATED DATE       : 03/01/2024 12:31:08.381
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE NONCLUSTERED INDEX ProductID
    ON dbo.[Order Details](ProductID)
  WITH (
        PAD_INDEX = OFF
       )
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID(N'dbo.[Order Details]') AND name=N'ProductID')
    PRINT N'<<< CREATED INDEX dbo.Order Details.ProductID >>>'
ELSE
    PRINT N'<<< FAILED CREATING INDEX dbo.Order Details.ProductID >>>'
go
