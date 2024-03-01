-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Table\dbo.CustomerCustomerDemo.sql
-- PRIMARY OBJECT     : dbo.CustomerCustomerDemo (Table)
-- CREATED DATE       : 03/01/2024 12:31:06.427
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE TABLE dbo.CustomerCustomerDemo
(
    CustomerID     nchar(5)  COLLATE Latin1_General_CI_AS NOT NULL,
    CustomerTypeID nchar(10) COLLATE Latin1_General_CI_AS NOT NULL,
    CONSTRAINT PK_CustomerCustomerDemo
    PRIMARY KEY NONCLUSTERED (CustomerID,CustomerTypeID)
)
go
IF OBJECT_ID(N'dbo.CustomerCustomerDemo') IS NOT NULL
    PRINT N'<<< CREATED TABLE dbo.CustomerCustomerDemo >>>'
ELSE
    PRINT N'<<< FAILED CREATING TABLE dbo.CustomerCustomerDemo >>>'
go
