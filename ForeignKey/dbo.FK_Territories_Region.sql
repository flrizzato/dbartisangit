-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\ForeignKey\dbo.FK_Territories_Region.sql
-- PRIMARY OBJECT     : dbo.FK_Territories_Region (ForeignKey)
-- CREATED DATE       : 03/01/2024 12:31:08.836
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
ALTER TABLE dbo.Territories
    ADD CONSTRAINT FK_Territories_Region
    FOREIGN KEY (RegionID)
    REFERENCES dbo.Region (RegionID)
go
