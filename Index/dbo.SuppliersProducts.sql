-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Index\dbo.SuppliersProducts.sql
-- PRIMARY OBJECT     : dbo.SuppliersProducts (Index)
-- CREATED DATE       : 03/01/2024 12:31:08.464
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE NONCLUSTERED INDEX SuppliersProducts
    ON dbo.Products(SupplierID)
  WITH (
        PAD_INDEX = OFF
       )
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID(N'dbo.Products') AND name=N'SuppliersProducts')
    PRINT N'<<< CREATED INDEX dbo.Products.SuppliersProducts >>>'
ELSE
    PRINT N'<<< FAILED CREATING INDEX dbo.Products.SuppliersProducts >>>'
go
