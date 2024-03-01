-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Table\dbo.Order Details.sql
-- PRIMARY OBJECT     : dbo.Order Details (Table)
-- CREATED DATE       : 03/01/2024 12:31:06.454
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE TABLE dbo.[Order Details]
(
    OrderID   int      NOT NULL,
    ProductID int      NOT NULL,
    UnitPrice money    CONSTRAINT DF_Order_Details_UnitPrice DEFAULT 0 NOT NULL,
    Quantity  smallint CONSTRAINT DF_Order_Details_Quantity DEFAULT 1 NOT NULL,
    Discount  real     CONSTRAINT DF_Order_Details_Discount DEFAULT 0 NOT NULL,
    CONSTRAINT PK_Order_Details
    PRIMARY KEY CLUSTERED (OrderID,ProductID),
    CONSTRAINT CK_Discount
    CHECK ([Discount]>=0 AND [Discount]<=1),
    CONSTRAINT CK_Quantity
    CHECK ([Quantity]>0),
    CONSTRAINT CK_UnitPrice
    CHECK ([UnitPrice]>=0)
)
go
IF OBJECT_ID(N'dbo.[Order Details]') IS NOT NULL
    PRINT N'<<< CREATED TABLE dbo.[Order Details] >>>'
ELSE
    PRINT N'<<< FAILED CREATING TABLE dbo.[Order Details] >>>'
go
