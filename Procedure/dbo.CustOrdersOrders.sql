-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Procedure\dbo.CustOrdersOrders.sql
-- PRIMARY OBJECT     : dbo.CustOrdersOrders (Procedure)
-- CREATED DATE       : 03/01/2024 12:31:11.341
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go

CREATE PROCEDURE dbo.CustOrdersOrders @CustomerID nchar(5)
AS
SELECT OrderID, 
	OrderDate,
	RequiredDate,
	ShippedDate
FROM Orders
WHERE CustomerID = @CustomerID
ORDER BY OrderID

go
SET ANSI_NULLS OFF
go
SET QUOTED_IDENTIFIER OFF
go
IF OBJECT_ID(N'dbo.CustOrdersOrders') IS NOT NULL
    PRINT N'<<< CREATED PROCEDURE dbo.CustOrdersOrders >>>'
ELSE
    PRINT N'<<< FAILED CREATING PROCEDURE dbo.CustOrdersOrders >>>'
go
