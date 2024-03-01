-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Index\dbo.CategoryName.sql
-- PRIMARY OBJECT     : dbo.CategoryName (Index)
-- CREATED DATE       : 03/01/2024 12:31:08.328
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE NONCLUSTERED INDEX CategoryName
    ON dbo.Categories(CategoryName)
  WITH (
        PAD_INDEX = OFF
       )
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID(N'dbo.Categories') AND name=N'CategoryName')
    PRINT N'<<< CREATED INDEX dbo.Categories.CategoryName >>>'
ELSE
    PRINT N'<<< FAILED CREATING INDEX dbo.Categories.CategoryName >>>'
go
