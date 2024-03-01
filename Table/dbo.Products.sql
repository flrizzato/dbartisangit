-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Table\dbo.Products.sql
-- PRIMARY OBJECT     : dbo.Products (Table)
-- CREATED DATE       : 03/01/2024 12:31:06.465
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE TABLE dbo.Products
(
    ProductID       int          IDENTITY,
    ProductName     nvarchar(40) COLLATE Latin1_General_CI_AS NOT NULL,
    SupplierID      int          NULL,
    CategoryID      int          NULL,
    QuantityPerUnit nvarchar(20) COLLATE Latin1_General_CI_AS NULL,
    UnitPrice       money        CONSTRAINT DF_Products_UnitPrice DEFAULT 0 NULL,
    UnitsInStock    smallint     CONSTRAINT DF_Products_UnitsInStock DEFAULT 0 NULL,
    UnitsOnOrder    smallint     CONSTRAINT DF_Products_UnitsOnOrder DEFAULT 0 NULL,
    ReorderLevel    smallint     CONSTRAINT DF_Products_ReorderLevel DEFAULT 0 NULL,
    Discontinued    bit          CONSTRAINT DF_Products_Discontinued DEFAULT 0 NOT NULL,
    CONSTRAINT PK_Products
    PRIMARY KEY CLUSTERED (ProductID),
    CONSTRAINT CK_Products_UnitPrice
    CHECK ([UnitPrice]>=0),
    CONSTRAINT CK_ReorderLevel
    CHECK ([ReorderLevel]>=0),
    CONSTRAINT CK_UnitsInStock
    CHECK ([UnitsInStock]>=0),
    CONSTRAINT CK_UnitsOnOrder
    CHECK ([UnitsOnOrder]>=0)
)
go
IF OBJECT_ID(N'dbo.Products') IS NOT NULL
    PRINT N'<<< CREATED TABLE dbo.Products >>>'
ELSE
    PRINT N'<<< FAILED CREATING TABLE dbo.Products >>>'
go
