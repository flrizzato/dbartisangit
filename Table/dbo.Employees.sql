-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\Table\dbo.Employees.sql
-- PRIMARY OBJECT     : dbo.Employees (Table)
-- CREATED DATE       : 03/01/2024 12:31:06.447
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
CREATE TABLE dbo.Employees
(
    EmployeeID      int           IDENTITY,
    LastName        nvarchar(20)  COLLATE Latin1_General_CI_AS NOT NULL,
    FirstName       nvarchar(10)  COLLATE Latin1_General_CI_AS NOT NULL,
    Title           nvarchar(30)  COLLATE Latin1_General_CI_AS NULL,
    TitleOfCourtesy nvarchar(25)  COLLATE Latin1_General_CI_AS NULL,
    BirthDate       datetime      NULL,
    HireDate        datetime      NULL,
    Address         nvarchar(60)  COLLATE Latin1_General_CI_AS NULL,
    City            nvarchar(15)  COLLATE Latin1_General_CI_AS NULL,
    Region          nvarchar(15)  COLLATE Latin1_General_CI_AS NULL,
    PostalCode      nvarchar(10)  COLLATE Latin1_General_CI_AS NULL,
    Country         nvarchar(15)  COLLATE Latin1_General_CI_AS NULL,
    HomePhone       nvarchar(24)  COLLATE Latin1_General_CI_AS NULL,
    Extension       nvarchar(4)   COLLATE Latin1_General_CI_AS NULL,
    Photo           image         NULL,
    Notes           ntext         COLLATE Latin1_General_CI_AS NULL,
    ReportsTo       int           NULL,
    PhotoPath       nvarchar(255) COLLATE Latin1_General_CI_AS NULL,
    CONSTRAINT PK_Employees
    PRIMARY KEY CLUSTERED (EmployeeID),
    CONSTRAINT CK_Birthdate
    CHECK ([BirthDate]<getdate())
)
go
IF OBJECT_ID(N'dbo.Employees') IS NOT NULL
    PRINT N'<<< CREATED TABLE dbo.Employees >>>'
ELSE
    PRINT N'<<< FAILED CREATING TABLE dbo.Employees >>>'
go
