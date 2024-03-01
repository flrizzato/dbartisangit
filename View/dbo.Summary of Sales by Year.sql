-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\View\dbo.Summary of Sales by Year.sql
-- PRIMARY OBJECT     : dbo.Summary of Sales by Year (View)
-- CREATED DATE       : 03/01/2024 12:31:12.224
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
create view dbo.[Summary of Sales by Year] AS
SELECT Orders.ShippedDate, Orders.OrderID, "Order Subtotals".Subtotal
FROM Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID
WHERE Orders.ShippedDate IS NOT NULL
--ORDER BY Orders.ShippedDate
go
IF OBJECT_ID(N'dbo.[Summary of Sales by Year]') IS NOT NULL
    PRINT N'<<< CREATED VIEW dbo.[Summary of Sales by Year] >>>'
ELSE
    PRINT N'<<< FAILED CREATING VIEW dbo.[Summary of Sales by Year] >>>'
go
