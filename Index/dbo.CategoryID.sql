-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Index\dbo.CategoryID.sql
-- PRIMARY OBJECT     : dbo.CategoryID (Index)
-- CREATED DATE       : 03/01/2024 12:31:08.447
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE NONCLUSTERED INDEX CategoryID
    ON dbo.Products(CategoryID)
  WITH (
        PAD_INDEX = OFF
       )
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID(N'dbo.Products') AND name=N'CategoryID')
    PRINT N'<<< CREATED INDEX dbo.Products.CategoryID >>>'
ELSE
    PRINT N'<<< FAILED CREATING INDEX dbo.Products.CategoryID >>>'
go
