-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Table\dbo.Customers.sql
-- PRIMARY OBJECT     : dbo.Customers (Table)
-- CREATED DATE       : 03/01/2024 12:31:06.437
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE TABLE dbo.Customers
(
    CustomerID   nchar(5)     COLLATE Latin1_General_CI_AS NOT NULL,
    CompanyName  nvarchar(40) COLLATE Latin1_General_CI_AS NOT NULL,
    ContactName  nvarchar(40) COLLATE Latin1_General_CI_AS NULL,
    ContactTitle nvarchar(30) COLLATE Latin1_General_CI_AS NULL,
    Address      nvarchar(60) COLLATE Latin1_General_CI_AS NULL,
    City         nvarchar(15) COLLATE Latin1_General_CI_AS NULL,
    Region       nvarchar(15) COLLATE Latin1_General_CI_AS NULL,
    PostalCode   nvarchar(10) COLLATE Latin1_General_CI_AS NULL,
    Country      nvarchar(15) COLLATE Latin1_General_CI_AS NULL,
    Phone        nvarchar(24) COLLATE Latin1_General_CI_AS NULL,
    Fax          nvarchar(24) COLLATE Latin1_General_CI_AS NULL,
    CONSTRAINT PK_Customers
    PRIMARY KEY CLUSTERED (CustomerID)
)
go
IF OBJECT_ID(N'dbo.Customers') IS NOT NULL
    PRINT N'<<< CREATED TABLE dbo.Customers >>>'
ELSE
    PRINT N'<<< FAILED CREATING TABLE dbo.Customers >>>'
go
