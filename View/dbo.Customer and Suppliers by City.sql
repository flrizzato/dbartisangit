-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\View\dbo.Customer and Suppliers by City.sql
-- PRIMARY OBJECT     : dbo.Customer and Suppliers by City (View)
-- CREATED DATE       : 03/01/2024 12:31:12.125
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
create view dbo.[Customer and Suppliers by City] AS
SELECT City, CompanyName, ContactName, 'Customers' AS Relationship 
FROM Customers
UNION SELECT City, CompanyName, ContactName, 'Suppliers'
FROM Suppliers
--ORDER BY City, CompanyName
go
IF OBJECT_ID(N'dbo.[Customer and Suppliers by City]') IS NOT NULL
    PRINT N'<<< CREATED VIEW dbo.[Customer and Suppliers by City] >>>'
ELSE
    PRINT N'<<< FAILED CREATING VIEW dbo.[Customer and Suppliers by City] >>>'
go
