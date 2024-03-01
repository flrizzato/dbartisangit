-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Table\dbo.Shippers.sql
-- PRIMARY OBJECT     : dbo.Shippers (Table)
-- CREATED DATE       : 03/01/2024 12:31:06.475
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE TABLE dbo.Shippers
(
    ShipperID   int          IDENTITY,
    CompanyName nvarchar(40) COLLATE Latin1_General_CI_AS NOT NULL,
    Phone       nvarchar(30) COLLATE Latin1_General_CI_AS NULL,
    CONSTRAINT PK_Shippers
    PRIMARY KEY CLUSTERED (ShipperID)
)
go
IF OBJECT_ID(N'dbo.Shippers') IS NOT NULL
    PRINT N'<<< CREATED TABLE dbo.Shippers >>>'
ELSE
    PRINT N'<<< FAILED CREATING TABLE dbo.Shippers >>>'
go
