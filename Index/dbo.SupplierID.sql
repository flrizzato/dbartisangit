-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Index\dbo.SupplierID.sql
-- PRIMARY OBJECT     : dbo.SupplierID (Index)
-- CREATED DATE       : 03/01/2024 12:31:08.454
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE NONCLUSTERED INDEX SupplierID
    ON dbo.Products(SupplierID)
  WITH (
        PAD_INDEX = OFF
       )
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID(N'dbo.Products') AND name=N'SupplierID')
    PRINT N'<<< CREATED INDEX dbo.Products.SupplierID >>>'
ELSE
    PRINT N'<<< FAILED CREATING INDEX dbo.Products.SupplierID >>>'
go
