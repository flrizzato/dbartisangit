-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\ForeignKey\dbo.FK_Orders_Employees.sql
-- PRIMARY OBJECT     : dbo.FK_Orders_Employees (ForeignKey)
-- CREATED DATE       : 03/01/2024 12:31:08.814
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
ALTER TABLE dbo.Orders
    WITH NOCHECK
    ADD CONSTRAINT FK_Orders_Employees
    FOREIGN KEY (EmployeeID)
    REFERENCES dbo.Employees (EmployeeID)
go
