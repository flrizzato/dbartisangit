-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Procedure\dbo.SalesByCategory.sql
-- PRIMARY OBJECT     : dbo.SalesByCategory (Procedure)
-- CREATED DATE       : 03/01/2024 12:31:11.380
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE PROCEDURE dbo.SalesByCategory
    @CategoryName nvarchar(15), @OrdYear nvarchar(4) = '1998'
AS
IF @OrdYear != '1996' AND @OrdYear != '1997' AND @OrdYear != '1998' 
BEGIN
	SELECT @OrdYear = '1998'
END

SELECT ProductName,
	TotalPurchase=ROUND(SUM(CONVERT(decimal(14,2), OD.Quantity * (1-OD.Discount) * OD.UnitPrice)), 0)
FROM [Order Details] OD, Orders O, Products P, Categories C
WHERE OD.OrderID = O.OrderID 
	AND OD.ProductID = P.ProductID 
	AND P.CategoryID = C.CategoryID
	AND C.CategoryName = @CategoryName
	AND SUBSTRING(CONVERT(nvarchar(22), O.OrderDate, 111), 1, 4) = @OrdYear
GROUP BY ProductName
ORDER BY ProductName

go
SET ANSI_NULLS OFF
go
SET QUOTED_IDENTIFIER OFF
go
IF OBJECT_ID(N'dbo.SalesByCategory') IS NOT NULL
    PRINT N'<<< CREATED PROCEDURE dbo.SalesByCategory >>>'
ELSE
    PRINT N'<<< FAILED CREATING PROCEDURE dbo.SalesByCategory >>>'
go
