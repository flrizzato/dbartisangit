-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Index\dbo.City.sql
-- PRIMARY OBJECT     : dbo.City (Index)
-- CREATED DATE       : 03/01/2024 12:31:08.335
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE NONCLUSTERED INDEX City
    ON dbo.Customers(City)
  WITH (
        PAD_INDEX = OFF
       )
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID(N'dbo.Customers') AND name=N'City')
    PRINT N'<<< CREATED INDEX dbo.Customers.City >>>'
ELSE
    PRINT N'<<< FAILED CREATING INDEX dbo.Customers.City >>>'
go
