-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\View\dbo.Alphabetical list of products.sql
-- PRIMARY OBJECT     : dbo.Alphabetical list of products (View)
-- CREATED DATE       : 03/01/2024 12:31:12.112
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
create view dbo.[Alphabetical list of products] AS
SELECT Products.*, Categories.CategoryName
FROM Categories INNER JOIN Products ON Categories.CategoryID = Products.CategoryID
WHERE (((Products.Discontinued)=0))
go
IF OBJECT_ID(N'dbo.[Alphabetical list of products]') IS NOT NULL
    PRINT N'<<< CREATED VIEW dbo.[Alphabetical list of products] >>>'
ELSE
    PRINT N'<<< FAILED CREATING VIEW dbo.[Alphabetical list of products] >>>'
go
