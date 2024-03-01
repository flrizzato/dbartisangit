-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\ForeignKey\dbo.FK_Employees_Employees.sql
-- PRIMARY OBJECT     : dbo.FK_Employees_Employees (ForeignKey)
-- CREATED DATE       : 03/01/2024 12:31:08.791
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
ALTER TABLE dbo.Employees
    WITH NOCHECK
    ADD CONSTRAINT FK_Employees_Employees
    FOREIGN KEY (ReportsTo)
    REFERENCES dbo.Employees (EmployeeID)
go
