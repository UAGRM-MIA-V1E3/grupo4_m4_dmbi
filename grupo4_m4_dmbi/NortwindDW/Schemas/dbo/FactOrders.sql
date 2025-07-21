CREATE TABLE [dbo].[FactOrders]
(
    OrderSK [int] IDENTITY(1,1) NOT NULL  CONSTRAINT [PK_FactOrders] PRIMARY KEY,
    [OrderID] [int] NOT NULL,
    [ProductSK] [int] NOT NULL,
	[CustomerSK] [int] NULL,
	[EmployeeSK] [int] NULL,
    [ShipperSK] [int] NULL,
	[OrderDateSK] [int] NULL,
	[RequiredDateSK] [int] NULL,
	[ShippedDateSK] [int] NULL,
	[OrderDate] [datetime] NULL,
	[RequiredDate] [datetime] NULL,
	[ShippedDate] [datetime] NULL,
    [UnitPrice] [money] NOT NULL,
	[Quantity] [smallint] NOT NULL,
	[Discount] [real] NOT NULL,
    [Freight] [money] NULL,
	[ShipName] [nvarchar](40) NULL,
	[ShipAddress] [nvarchar](60) NULL,
	[ShipCity] [nvarchar](15) NULL,
	[ShipRegion] [nvarchar](15) NULL,
	[ShipPostalCode] [nvarchar](10) NULL,
	[ShipCountry] [nvarchar](15) NULL

);
GO

ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT [FK_DimCustomer] FOREIGN KEY([CustomerSK]) REFERENCES [dbo].[DimCustomer] ([CustomerSK]);
GO

ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT [FK_DimDate_OrderDate] FOREIGN KEY([OrderDateSK]) REFERENCES [dbo].[DimDate] ([DateSK]);
GO

ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT [FK_DimDate_RequiredDate] FOREIGN KEY([RequiredDateSK]) REFERENCES [dbo].[DimDate] ([DateSK]);
GO

ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT [FK_DimDate_ShippedDate] FOREIGN KEY([ShippedDateSK]) REFERENCES [dbo].[DimDate] ([DateSK]);
GO

ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT [FK_DimProduct] FOREIGN KEY([ProductSK]) REFERENCES [dbo].[DimProduct] ([ProductSK]);
GO

ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT [FK_DimEmployee] FOREIGN KEY([EmployeeSK]) REFERENCES [dbo].[DimEmployee] ([EmployeeSK]);
GO

ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT [FK_DimShipper] FOREIGN KEY([ShipperSK]) REFERENCES [dbo].[DimShipper] ([ShipperSK]);
GO

