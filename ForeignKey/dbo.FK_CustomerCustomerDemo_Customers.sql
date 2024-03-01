-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\ForeignKey\dbo.FK_CustomerCustomerDemo_Customers.sql
-- PRIMARY OBJECT     : dbo.FK_CustomerCustomerDemo_Customers (ForeignKey)
-- CREATED DATE       : 03/01/2024 12:31:08.771
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
ALTER TABLE dbo.CustomerCustomerDemo
    ADD CONSTRAINT FK_CustomerCustomerDemo_Customers
    FOREIGN KEY (CustomerID)
    REFERENCES dbo.Customers (CustomerID)
go
