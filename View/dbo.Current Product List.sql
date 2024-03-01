-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\View\dbo.Current Product List.sql
-- PRIMARY OBJECT     : dbo.Current Product List (View)
-- CREATED DATE       : 03/01/2024 12:31:12.118
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
create view dbo.[Current Product List] AS
SELECT Product_List.ProductID, Product_List.ProductName
FROM Products AS Product_List
WHERE (((Product_List.Discontinued)=0))
--ORDER BY Product_List.ProductName
go
IF OBJECT_ID(N'dbo.[Current Product List]') IS NOT NULL
    PRINT N'<<< CREATED VIEW dbo.[Current Product List] >>>'
ELSE
    PRINT N'<<< FAILED CREATING VIEW dbo.[Current Product List] >>>'
go
