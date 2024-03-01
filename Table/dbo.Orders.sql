-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Table\dbo.Orders.sql
-- PRIMARY OBJECT     : dbo.Orders (Table)
-- CREATED DATE       : 03/01/2024 12:31:06.460
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE TABLE dbo.Orders
(
    OrderID        int          IDENTITY,
    CustomerID     nchar(5)     COLLATE Latin1_General_CI_AS NULL,
    EmployeeID     int          NULL,
    OrderDate      datetime     NULL,
    RequiredDate   datetime     NULL,
    ShippedDate    datetime     NULL,
    ShipVia        int          NULL,
    Freight        money        CONSTRAINT DF_Orders_Freight DEFAULT 0 NULL,
    ShipName       nvarchar(40) COLLATE Latin1_General_CI_AS NULL,
    ShipAddress    nvarchar(60) COLLATE Latin1_General_CI_AS NULL,
    ShipCity       nvarchar(15) COLLATE Latin1_General_CI_AS NULL,
    ShipRegion     nvarchar(15) COLLATE Latin1_General_CI_AS NULL,
    ShipPostalCode nvarchar(10) COLLATE Latin1_General_CI_AS NULL,
    ShipCountry    nvarchar(15) COLLATE Latin1_General_CI_AS NULL,
    CONSTRAINT PK_Orders
    PRIMARY KEY CLUSTERED (OrderID)
)
go
IF OBJECT_ID(N'dbo.Orders') IS NOT NULL
    PRINT N'<<< CREATED TABLE dbo.Orders >>>'
ELSE
    PRINT N'<<< FAILED CREATING TABLE dbo.Orders >>>'
go
