-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\ForeignKey\dbo.FK_EmployeeTerritories_Territories.sql
-- PRIMARY OBJECT     : dbo.FK_EmployeeTerritories_Territories (ForeignKey)
-- CREATED DATE       : 03/01/2024 12:31:08.785
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
ALTER TABLE dbo.EmployeeTerritories
    ADD CONSTRAINT FK_EmployeeTerritories_Territories
    FOREIGN KEY (TerritoryID)
    REFERENCES dbo.Territories (TerritoryID)
go
