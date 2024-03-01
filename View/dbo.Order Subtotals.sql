-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\View\dbo.Order Subtotals.sql
-- PRIMARY OBJECT     : dbo.Order Subtotals (View)
-- CREATED DATE       : 03/01/2024 12:31:12.153
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
create view dbo.[Order Subtotals] AS
SELECT "Order Details".OrderID, Sum(CONVERT(money,("Order Details".UnitPrice*Quantity*(1-Discount)/100))*100) AS Subtotal
FROM "Order Details"
GROUP BY "Order Details".OrderID
go
IF OBJECT_ID(N'dbo.[Order Subtotals]') IS NOT NULL
    PRINT N'<<< CREATED VIEW dbo.[Order Subtotals] >>>'
ELSE
    PRINT N'<<< FAILED CREATING VIEW dbo.[Order Subtotals] >>>'
go
