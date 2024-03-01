-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\View\dbo.Quarterly Orders.sql
-- PRIMARY OBJECT     : dbo.Quarterly Orders (View)
-- CREATED DATE       : 03/01/2024 12:31:12.188
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
create view dbo.[Quarterly Orders] AS
SELECT DISTINCT Customers.CustomerID, Customers.CompanyName, Customers.City, Customers.Country
FROM Customers RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderDate BETWEEN '19970101' And '19971231'
go
IF OBJECT_ID(N'dbo.[Quarterly Orders]') IS NOT NULL
    PRINT N'<<< CREATED VIEW dbo.[Quarterly Orders] >>>'
ELSE
    PRINT N'<<< FAILED CREATING VIEW dbo.[Quarterly Orders] >>>'
go
