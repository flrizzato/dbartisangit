-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\View\dbo.Order Details Extended.sql
-- PRIMARY OBJECT     : dbo.Order Details Extended (View)
-- CREATED DATE       : 03/01/2024 12:31:12.148
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
create view dbo.[Order Details Extended] AS
SELECT "Order Details".OrderID, "Order Details".ProductID, Products.ProductName, 
	"Order Details".UnitPrice, "Order Details".Quantity, "Order Details".Discount, 
	(CONVERT(money,("Order Details".UnitPrice*Quantity*(1-Discount)/100))*100) AS ExtendedPrice
FROM Products INNER JOIN "Order Details" ON Products.ProductID = "Order Details".ProductID
--ORDER BY "Order Details".OrderID
go
IF OBJECT_ID(N'dbo.[Order Details Extended]') IS NOT NULL
    PRINT N'<<< CREATED VIEW dbo.[Order Details Extended] >>>'
ELSE
    PRINT N'<<< FAILED CREATING VIEW dbo.[Order Details Extended] >>>'
go
