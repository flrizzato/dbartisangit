-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Index\dbo.Region.sql
-- PRIMARY OBJECT     : dbo.Region (Index)
-- CREATED DATE       : 03/01/2024 12:31:08.349
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE NONCLUSTERED INDEX Region
    ON dbo.Customers(Region)
  WITH (
        PAD_INDEX = OFF
       )
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID(N'dbo.Customers') AND name=N'Region')
    PRINT N'<<< CREATED INDEX dbo.Customers.Region >>>'
ELSE
    PRINT N'<<< FAILED CREATING INDEX dbo.Customers.Region >>>'
go
