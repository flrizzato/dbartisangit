-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Index\dbo.EmployeesOrders.sql
-- PRIMARY OBJECT     : dbo.EmployeesOrders (Index)
-- CREATED DATE       : 03/01/2024 12:31:08.406
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE NONCLUSTERED INDEX EmployeesOrders
    ON dbo.Orders(EmployeeID)
  WITH (
        PAD_INDEX = OFF
       )
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID(N'dbo.Orders') AND name=N'EmployeesOrders')
    PRINT N'<<< CREATED INDEX dbo.Orders.EmployeesOrders >>>'
ELSE
    PRINT N'<<< FAILED CREATING INDEX dbo.Orders.EmployeesOrders >>>'
go
