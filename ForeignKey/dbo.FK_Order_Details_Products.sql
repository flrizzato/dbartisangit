-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\ForeignKey\dbo.FK_Order_Details_Products.sql
-- PRIMARY OBJECT     : dbo.FK_Order_Details_Products (ForeignKey)
-- CREATED DATE       : 03/01/2024 12:31:08.800
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
ALTER TABLE dbo.[Order Details]
    WITH NOCHECK
    ADD CONSTRAINT FK_Order_Details_Products
    FOREIGN KEY (ProductID)
    REFERENCES dbo.Products (ProductID)
go
