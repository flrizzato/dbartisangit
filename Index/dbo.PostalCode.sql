-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Index\dbo.PostalCode.sql
-- PRIMARY OBJECT     : dbo.PostalCode (Index)
-- CREATED DATE       : 03/01/2024 12:31:08.346
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE NONCLUSTERED INDEX PostalCode
    ON dbo.Customers(PostalCode)
  WITH (
        PAD_INDEX = OFF
       )
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID(N'dbo.Customers') AND name=N'PostalCode')
    PRINT N'<<< CREATED INDEX dbo.Customers.PostalCode >>>'
ELSE
    PRINT N'<<< FAILED CREATING INDEX dbo.Customers.PostalCode >>>'
go
