-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Index\dbo.CompanyName.sql
-- PRIMARY OBJECT     : dbo.CompanyName (Index)
-- CREATED DATE       : 03/01/2024 12:31:08.341
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE NONCLUSTERED INDEX CompanyName
    ON dbo.Customers(CompanyName)
  WITH (
        PAD_INDEX = OFF
       )
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID(N'dbo.Customers') AND name=N'CompanyName')
    PRINT N'<<< CREATED INDEX dbo.Customers.CompanyName >>>'
ELSE
    PRINT N'<<< FAILED CREATING INDEX dbo.Customers.CompanyName >>>'
go
