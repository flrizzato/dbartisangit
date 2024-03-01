-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\View\dbo.Sales Totals by Amount.sql
-- PRIMARY OBJECT     : dbo.Sales Totals by Amount (View)
-- CREATED DATE       : 03/01/2024 12:31:12.204
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
create view dbo.[Sales Totals by Amount] AS
SELECT "Order Subtotals".Subtotal AS SaleAmount, Orders.OrderID, Customers.CompanyName, Orders.ShippedDate
FROM 	Customers INNER JOIN 
		(Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID) 
	ON Customers.CustomerID = Orders.CustomerID
WHERE ("Order Subtotals".Subtotal >2500) AND (Orders.ShippedDate BETWEEN '19970101' And '19971231')
go
IF OBJECT_ID(N'dbo.[Sales Totals by Amount]') IS NOT NULL
    PRINT N'<<< CREATED VIEW dbo.[Sales Totals by Amount] >>>'
ELSE
    PRINT N'<<< FAILED CREATING VIEW dbo.[Sales Totals by Amount] >>>'
go
