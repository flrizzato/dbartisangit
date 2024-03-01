-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Table\dbo.Region.sql
-- PRIMARY OBJECT     : dbo.Region (Table)
-- CREATED DATE       : 03/01/2024 12:31:06.469
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE TABLE dbo.Region
(
    RegionID          int        NOT NULL,
    RegionDescription nchar(100) COLLATE Latin1_General_CI_AS NOT NULL,
    CONSTRAINT PK_Region
    PRIMARY KEY NONCLUSTERED (RegionID)
)
go
IF OBJECT_ID(N'dbo.Region') IS NOT NULL
    PRINT N'<<< CREATED TABLE dbo.Region >>>'
ELSE
    PRINT N'<<< FAILED CREATING TABLE dbo.Region >>>'
go
