-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Index\dbo.LastName.sql
-- PRIMARY OBJECT     : dbo.LastName (Index)
-- CREATED DATE       : 03/01/2024 12:31:08.354
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE NONCLUSTERED INDEX LastName
    ON dbo.Employees(LastName)
  WITH (
        PAD_INDEX = OFF
       )
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID(N'dbo.Employees') AND name=N'LastName')
    PRINT N'<<< CREATED INDEX dbo.Employees.LastName >>>'
ELSE
    PRINT N'<<< FAILED CREATING INDEX dbo.Employees.LastName >>>'
go
