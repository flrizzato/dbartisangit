-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\ForeignKey\dbo.FK_Orders_Customers.sql
-- PRIMARY OBJECT     : dbo.FK_Orders_Customers (ForeignKey)
-- CREATED DATE       : 03/01/2024 12:31:08.808
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
ALTER TABLE dbo.Orders
    WITH NOCHECK
    ADD CONSTRAINT FK_Orders_Customers
    FOREIGN KEY (CustomerID)
    REFERENCES dbo.Customers (CustomerID)
go
