-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Procedure\dbo.Ten Most Expensive Products.sql
-- PRIMARY OBJECT     : dbo.Ten Most Expensive Products (Procedure)
-- CREATED DATE       : 03/01/2024 12:31:11.385
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go

create procedure dbo.[Ten Most Expensive Products] AS
SET ROWCOUNT 10
SELECT Products.ProductName AS TenMostExpensiveProducts, Products.UnitPrice
FROM Products
ORDER BY Products.UnitPrice DESC

go
SET ANSI_NULLS OFF
go
SET QUOTED_IDENTIFIER OFF
go
IF OBJECT_ID(N'dbo.[Ten Most Expensive Products]') IS NOT NULL
    PRINT N'<<< CREATED PROCEDURE dbo.[Ten Most Expensive Products] >>>'
ELSE
    PRINT N'<<< FAILED CREATING PROCEDURE dbo.[Ten Most Expensive Products] >>>'
go
