-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Index\dbo.ProductsOrder_Details.sql
-- PRIMARY OBJECT     : dbo.ProductsOrder_Details (Index)
-- CREATED DATE       : 03/01/2024 12:31:08.383
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE NONCLUSTERED INDEX ProductsOrder_Details
    ON dbo.[Order Details](ProductID)
  WITH (
        PAD_INDEX = OFF
       )
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID(N'dbo.[Order Details]') AND name=N'ProductsOrder_Details')
    PRINT N'<<< CREATED INDEX dbo.Order Details.ProductsOrder_Details >>>'
ELSE
    PRINT N'<<< FAILED CREATING INDEX dbo.Order Details.ProductsOrder_Details >>>'
go
