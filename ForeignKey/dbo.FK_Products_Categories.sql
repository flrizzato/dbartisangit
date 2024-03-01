-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\ForeignKey\dbo.FK_Products_Categories.sql
-- PRIMARY OBJECT     : dbo.FK_Products_Categories (ForeignKey)
-- CREATED DATE       : 03/01/2024 12:31:08.826
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
ALTER TABLE dbo.Products
    WITH NOCHECK
    ADD CONSTRAINT FK_Products_Categories
    FOREIGN KEY (CategoryID)
    REFERENCES dbo.Categories (CategoryID)
go
