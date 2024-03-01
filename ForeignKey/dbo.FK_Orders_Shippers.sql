-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\ForeignKey\dbo.FK_Orders_Shippers.sql
-- PRIMARY OBJECT     : dbo.FK_Orders_Shippers (ForeignKey)
-- CREATED DATE       : 03/01/2024 12:31:08.819
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
ALTER TABLE dbo.Orders
    WITH NOCHECK
    ADD CONSTRAINT FK_Orders_Shippers
    FOREIGN KEY (ShipVia)
    REFERENCES dbo.Shippers (ShipperID)
go
