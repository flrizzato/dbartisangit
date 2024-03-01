-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Index\dbo.EmployeeID.sql
-- PRIMARY OBJECT     : dbo.EmployeeID (Index)
-- CREATED DATE       : 03/01/2024 12:31:08.404
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE NONCLUSTERED INDEX EmployeeID
    ON dbo.Orders(EmployeeID)
  WITH (
        PAD_INDEX = OFF
       )
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID(N'dbo.Orders') AND name=N'EmployeeID')
    PRINT N'<<< CREATED INDEX dbo.Orders.EmployeeID >>>'
ELSE
    PRINT N'<<< FAILED CREATING INDEX dbo.Orders.EmployeeID >>>'
go
