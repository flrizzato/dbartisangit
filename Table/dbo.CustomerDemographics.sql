-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Table\dbo.CustomerDemographics.sql
-- PRIMARY OBJECT     : dbo.CustomerDemographics (Table)
-- CREATED DATE       : 03/01/2024 12:31:06.431
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE TABLE dbo.CustomerDemographics
(
    CustomerTypeID nchar(10) COLLATE Latin1_General_CI_AS NOT NULL,
    CustomerDesc   ntext     COLLATE Latin1_General_CI_AS NULL,
    CONSTRAINT PK_CustomerDemographics
    PRIMARY KEY NONCLUSTERED (CustomerTypeID)
)
go
IF OBJECT_ID(N'dbo.CustomerDemographics') IS NOT NULL
    PRINT N'<<< CREATED TABLE dbo.CustomerDemographics >>>'
ELSE
    PRINT N'<<< FAILED CREATING TABLE dbo.CustomerDemographics >>>'
go
