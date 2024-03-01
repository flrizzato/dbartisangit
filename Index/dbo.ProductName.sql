-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Index\dbo.ProductName.sql
-- PRIMARY OBJECT     : dbo.ProductName (Index)
-- CREATED DATE       : 03/01/2024 12:31:08.452
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE NONCLUSTERED INDEX ProductName
    ON dbo.Products(ProductName)
  WITH (
        PAD_INDEX = OFF
       )
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID(N'dbo.Products') AND name=N'ProductName')
    PRINT N'<<< CREATED INDEX dbo.Products.ProductName >>>'
ELSE
    PRINT N'<<< FAILED CREATING INDEX dbo.Products.ProductName >>>'
go
