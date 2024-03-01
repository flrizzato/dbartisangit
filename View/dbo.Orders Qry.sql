-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\View\dbo.Orders Qry.sql
-- PRIMARY OBJECT     : dbo.Orders Qry (View)
-- CREATED DATE       : 03/01/2024 12:31:12.162
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
create view dbo.[Orders Qry] AS
SELECT Orders.OrderID, Orders.CustomerID, Orders.EmployeeID, Orders.OrderDate, Orders.RequiredDate, 
	Orders.ShippedDate, Orders.ShipVia, Orders.Freight, Orders.ShipName, Orders.ShipAddress, Orders.ShipCity, 
	Orders.ShipRegion, Orders.ShipPostalCode, Orders.ShipCountry, 
	Customers.CompanyName, Customers.Address, Customers.City, Customers.Region, Customers.PostalCode, Customers.Country
FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
go
IF OBJECT_ID(N'dbo.[Orders Qry]') IS NOT NULL
    PRINT N'<<< CREATED VIEW dbo.[Orders Qry] >>>'
ELSE
    PRINT N'<<< FAILED CREATING VIEW dbo.[Orders Qry] >>>'
go
