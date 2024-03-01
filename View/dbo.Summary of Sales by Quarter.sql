-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\View\dbo.Summary of Sales by Quarter.sql
-- PRIMARY OBJECT     : dbo.Summary of Sales by Quarter (View)
-- CREATED DATE       : 03/01/2024 12:31:12.217
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
create view dbo.[Summary of Sales by Quarter] AS
SELECT Orders.ShippedDate, Orders.OrderID, "Order Subtotals".Subtotal
FROM Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID
WHERE Orders.ShippedDate IS NOT NULL
--ORDER BY Orders.ShippedDate
go
IF OBJECT_ID(N'dbo.[Summary of Sales by Quarter]') IS NOT NULL
    PRINT N'<<< CREATED VIEW dbo.[Summary of Sales by Quarter] >>>'
ELSE
    PRINT N'<<< FAILED CREATING VIEW dbo.[Summary of Sales by Quarter] >>>'
go
