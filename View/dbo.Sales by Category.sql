-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\View\dbo.Sales by Category.sql
-- PRIMARY OBJECT     : dbo.Sales by Category (View)
-- CREATED DATE       : 03/01/2024 12:31:12.212
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
create view dbo.[Sales by Category] AS
SELECT Categories.CategoryID, Categories.CategoryName, Products.ProductName, 
	Sum("Order Details Extended".ExtendedPrice) AS ProductSales
FROM 	Categories INNER JOIN 
		(Products INNER JOIN 
			(Orders INNER JOIN "Order Details Extended" ON Orders.OrderID = "Order Details Extended".OrderID) 
		ON Products.ProductID = "Order Details Extended".ProductID) 
	ON Categories.CategoryID = Products.CategoryID
WHERE Orders.OrderDate BETWEEN '19970101' And '19971231'
GROUP BY Categories.CategoryID, Categories.CategoryName, Products.ProductName
--ORDER BY Products.ProductName
go
IF OBJECT_ID(N'dbo.[Sales by Category]') IS NOT NULL
    PRINT N'<<< CREATED VIEW dbo.[Sales by Category] >>>'
ELSE
    PRINT N'<<< FAILED CREATING VIEW dbo.[Sales by Category] >>>'
go
