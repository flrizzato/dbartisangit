-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\ForeignKey\dbo.FK_Products_Suppliers.sql
-- PRIMARY OBJECT     : dbo.FK_Products_Suppliers (ForeignKey)
-- CREATED DATE       : 03/01/2024 12:31:08.829
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
ALTER TABLE dbo.Products
    WITH NOCHECK
    ADD CONSTRAINT FK_Products_Suppliers
    FOREIGN KEY (SupplierID)
    REFERENCES dbo.Suppliers (SupplierID)
go
