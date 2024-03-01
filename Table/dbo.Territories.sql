-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Table\dbo.Territories.sql
-- PRIMARY OBJECT     : dbo.Territories (Table)
-- CREATED DATE       : 03/01/2024 12:31:06.484
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE TABLE dbo.Territories
(
    TerritoryID          nvarchar(20) COLLATE Latin1_General_CI_AS NOT NULL,
    TerritoryDescription nchar(50)    COLLATE Latin1_General_CI_AS NOT NULL,
    RegionID             int          NOT NULL,
    CONSTRAINT PK_Territories
    PRIMARY KEY NONCLUSTERED (TerritoryID)
)
go
IF OBJECT_ID(N'dbo.Territories') IS NOT NULL
    PRINT N'<<< CREATED TABLE dbo.Territories >>>'
ELSE
    PRINT N'<<< FAILED CREATING TABLE dbo.Territories >>>'
go
