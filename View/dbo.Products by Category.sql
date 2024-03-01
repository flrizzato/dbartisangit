-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\View\dbo.Products by Category.sql
-- PRIMARY OBJECT     : dbo.Products by Category (View)
-- CREATED DATE       : 03/01/2024 12:31:12.182
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
create view dbo.[Products by Category] AS
SELECT Categories.CategoryName, Products.ProductName, Products.QuantityPerUnit, Products.UnitsInStock, Products.Discontinued
FROM Categories INNER JOIN Products ON Categories.CategoryID = Products.CategoryID
WHERE Products.Discontinued <> 1
--ORDER BY Categories.CategoryName, Products.ProductName
go
IF OBJECT_ID(N'dbo.[Products by Category]') IS NOT NULL
    PRINT N'<<< CREATED VIEW dbo.[Products by Category] >>>'
ELSE
    PRINT N'<<< FAILED CREATING VIEW dbo.[Products by Category] >>>'
go
