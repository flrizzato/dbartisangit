-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\View\dbo.Products Above Average Price.sql
-- PRIMARY OBJECT     : dbo.Products Above Average Price (View)
-- CREATED DATE       : 03/01/2024 12:31:12.174
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
create view dbo.[Products Above Average Price] AS
SELECT Products.ProductName, Products.UnitPrice
FROM Products
WHERE Products.UnitPrice>(SELECT AVG(UnitPrice) From Products)
--ORDER BY Products.UnitPrice DESC
go
IF OBJECT_ID(N'dbo.[Products Above Average Price]') IS NOT NULL
    PRINT N'<<< CREATED VIEW dbo.[Products Above Average Price] >>>'
ELSE
    PRINT N'<<< FAILED CREATING VIEW dbo.[Products Above Average Price] >>>'
go
