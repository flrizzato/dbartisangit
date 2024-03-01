-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Procedure\dbo.CustOrdersDetail.sql
-- PRIMARY OBJECT     : dbo.CustOrdersDetail (Procedure)
-- CREATED DATE       : 03/01/2024 12:31:11.329
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go

CREATE PROCEDURE dbo.CustOrdersDetail @OrderID int
AS
SELECT ProductName,
    UnitPrice=ROUND(Od.UnitPrice, 2),
    Quantity,
    Discount=CONVERT(int, Discount * 100), 
    ExtendedPrice=ROUND(CONVERT(money, Quantity * (1 - Discount) * Od.UnitPrice), 2)
FROM Products P, [Order Details] Od
WHERE Od.ProductID = P.ProductID and Od.OrderID = @OrderID

go
SET ANSI_NULLS OFF
go
SET QUOTED_IDENTIFIER OFF
go
IF OBJECT_ID(N'dbo.CustOrdersDetail') IS NOT NULL
    PRINT N'<<< CREATED PROCEDURE dbo.CustOrdersDetail >>>'
ELSE
    PRINT N'<<< FAILED CREATING PROCEDURE dbo.CustOrdersDetail >>>'
go
