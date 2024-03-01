-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Procedure\dbo.Sales by Year.sql
-- PRIMARY OBJECT     : dbo.Sales by Year (Procedure)
-- CREATED DATE       : 03/01/2024 12:31:11.362
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go

create procedure dbo.[Sales by Year] 
	@Beginning_Date DateTime, @Ending_Date DateTime AS
SELECT Orders.ShippedDate, Orders.OrderID, "Order Subtotals".Subtotal, DATENAME(yy,ShippedDate) AS Year
FROM Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID
WHERE Orders.ShippedDate Between @Beginning_Date And @Ending_Date

go
SET ANSI_NULLS OFF
go
SET QUOTED_IDENTIFIER OFF
go
IF OBJECT_ID(N'dbo.[Sales by Year]') IS NOT NULL
    PRINT N'<<< CREATED PROCEDURE dbo.[Sales by Year] >>>'
ELSE
    PRINT N'<<< FAILED CREATING PROCEDURE dbo.[Sales by Year] >>>'
go
