-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Index\dbo.CategoriesProducts.sql
-- PRIMARY OBJECT     : dbo.CategoriesProducts (Index)
-- CREATED DATE       : 03/01/2024 12:31:08.440
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE NONCLUSTERED INDEX CategoriesProducts
    ON dbo.Products(CategoryID)
  WITH (
        PAD_INDEX = OFF
       )
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID(N'dbo.Products') AND name=N'CategoriesProducts')
    PRINT N'<<< CREATED INDEX dbo.Products.CategoriesProducts >>>'
ELSE
    PRINT N'<<< FAILED CREATING INDEX dbo.Products.CategoriesProducts >>>'
go
