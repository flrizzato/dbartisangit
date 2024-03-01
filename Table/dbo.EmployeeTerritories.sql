-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Table\dbo.EmployeeTerritories.sql
-- PRIMARY OBJECT     : dbo.EmployeeTerritories (Table)
-- CREATED DATE       : 03/01/2024 12:31:06.449
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE TABLE dbo.EmployeeTerritories
(
    EmployeeID  int          NOT NULL,
    TerritoryID nvarchar(20) COLLATE Latin1_General_CI_AS NOT NULL,
    CONSTRAINT PK_EmployeeTerritories
    PRIMARY KEY NONCLUSTERED (EmployeeID,TerritoryID)
)
go
IF OBJECT_ID(N'dbo.EmployeeTerritories') IS NOT NULL
    PRINT N'<<< CREATED TABLE dbo.EmployeeTerritories >>>'
ELSE
    PRINT N'<<< FAILED CREATING TABLE dbo.EmployeeTerritories >>>'
go
