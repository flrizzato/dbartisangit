-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Procedure\dbo.CustOrderHist.sql
-- PRIMARY OBJECT     : dbo.CustOrderHist (Procedure)
-- CREATED DATE       : 03/01/2024 12:31:11.317
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE PROCEDURE dbo.CustOrderHist @CustomerID nchar(5)
AS
SELECT ProductName, Total=SUM(Quantity)
FROM Products P, [Order Details] OD, Orders O, Customers C
WHERE C.CustomerID = @CustomerID
AND C.CustomerID = O.CustomerID AND O.OrderID = OD.OrderID AND OD.ProductID = P.ProductID
GROUP BY ProductName

go
SET ANSI_NULLS OFF
go
SET QUOTED_IDENTIFIER OFF
go
IF OBJECT_ID(N'dbo.CustOrderHist') IS NOT NULL
    PRINT N'<<< CREATED PROCEDURE dbo.CustOrderHist >>>'
ELSE
    PRINT N'<<< FAILED CREATING PROCEDURE dbo.CustOrderHist >>>'
go
