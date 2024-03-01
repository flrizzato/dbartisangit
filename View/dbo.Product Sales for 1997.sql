-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\View\dbo.Product Sales for 1997.sql
-- PRIMARY OBJECT     : dbo.Product Sales for 1997 (View)
-- CREATED DATE       : 03/01/2024 12:31:12.168
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
create view dbo.[Product Sales for 1997] AS
SELECT Categories.CategoryName, Products.ProductName, 
Sum(CONVERT(money,("Order Details".UnitPrice*Quantity*(1-Discount)/100))*100) AS ProductSales
FROM (Categories INNER JOIN Products ON Categories.CategoryID = Products.CategoryID) 
	INNER JOIN (Orders 
		INNER JOIN "Order Details" ON Orders.OrderID = "Order Details".OrderID) 
	ON Products.ProductID = "Order Details".ProductID
WHERE (((Orders.ShippedDate) Between '19970101' And '19971231'))
GROUP BY Categories.CategoryName, Products.ProductName
go
IF OBJECT_ID(N'dbo.[Product Sales for 1997]') IS NOT NULL
    PRINT N'<<< CREATED VIEW dbo.[Product Sales for 1997] >>>'
ELSE
    PRINT N'<<< FAILED CREATING VIEW dbo.[Product Sales for 1997] >>>'
go
