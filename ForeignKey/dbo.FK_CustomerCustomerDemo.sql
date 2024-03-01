-- --------------------------------------------------------------------------------
-- FILE               : C:\dbartisangit\ForeignKey\dbo.FK_CustomerCustomerDemo.sql
-- PRIMARY OBJECT     : dbo.FK_CustomerCustomerDemo (ForeignKey)
-- CREATED DATE       : 03/01/2024 12:31:08.766
-- SOURCE             : Reverse-Engineered from SQL Server on 192.168.56.1 (SQLServer)
-- --------------------------------------------------------------------------------
ALTER TABLE dbo.CustomerCustomerDemo
    ADD CONSTRAINT FK_CustomerCustomerDemo
    FOREIGN KEY (CustomerTypeID)
    REFERENCES dbo.CustomerDemographics (CustomerTypeID)
go
