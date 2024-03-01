-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Procedure\dbo.Employee Sales by Country.sql
-- PRIMARY OBJECT     : dbo.Employee Sales by Country (Procedure)
-- CREATED DATE       : 03/01/2024 12:31:11.354
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go

create procedure dbo.[Employee Sales by Country] 
@Beginning_Date DateTime, @Ending_Date DateTime AS
SELECT Employees.Country, Employees.LastName, Employees.FirstName, Orders.ShippedDate, Orders.OrderID, "Order Subtotals".Subtotal AS SaleAmount
FROM Employees INNER JOIN 
	(Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID) 
	ON Employees.EmployeeID = Orders.EmployeeID
WHERE Orders.ShippedDate Between @Beginning_Date And @Ending_Date

go
SET ANSI_NULLS OFF
go
SET QUOTED_IDENTIFIER OFF
go
IF OBJECT_ID(N'dbo.[Employee Sales by Country]') IS NOT NULL
    PRINT N'<<< CREATED PROCEDURE dbo.[Employee Sales by Country] >>>'
ELSE
    PRINT N'<<< FAILED CREATING PROCEDURE dbo.[Employee Sales by Country] >>>'
go
