-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Table\dbo.Categories.sql
-- PRIMARY OBJECT     : dbo.Categories (Table)
-- CREATED DATE       : 03/01/2024 12:31:06.423
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE TABLE dbo.Categories
(
    CategoryID   int          IDENTITY,
    CategoryName nvarchar(50) COLLATE Latin1_General_CI_AS NOT NULL,
    Description  ntext        COLLATE Latin1_General_CI_AS NULL,
    Picture      image        NULL,
    CONSTRAINT PK_Categories
    PRIMARY KEY CLUSTERED (CategoryID)
)
go
-- TESTING THIS CHANGE
IF OBJECT_ID(N'dbo.Categories') IS NOT NULL
    PRINT N'<<< CREATED TABLE dbo.Categories >>>'
ELSE
    PRINT N'<<< FAILED CREATING TABLE dbo.Categories >>>'
go
