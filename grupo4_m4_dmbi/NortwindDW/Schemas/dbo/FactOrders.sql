CREATE TABLE [dbo].[FactOrders]
(
    OrderKey [int] IDENTITY(1,1) NOT NULL  CONSTRAINT [PK_FactOrders] PRIMARY KEY,
    [OrderID] [int] NOT NULL,
    [ProductKey] [int] NOT NULL,
	[CustomerKey] [int] NULL,
	[EmployeeKey] [int] NULL,
    [ShipperKey] [int] NULL,
	[OrderDateKey] [int] NULL,
	[RequiredDateKey] [int] NULL,
	[ShippedDateKey] [int] NULL,
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

ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT [FK_DimCustomer] FOREIGN KEY([CustomerKey]) REFERENCES [dbo].[DimCustomer] ([CustomerKey]);
GO

ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT [FK_DimDate_OrderDate] FOREIGN KEY([OrderDateKey]) REFERENCES [dbo].[DimDate] ([DateKey]);
GO

ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT [FK_DimDate_RequiredDate] FOREIGN KEY([RequiredDateKey]) REFERENCES [dbo].[DimDate] ([DateKey]);
GO

ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT [FK_DimDate_ShippedDate] FOREIGN KEY([ShippedDateKey]) REFERENCES [dbo].[DimDate] ([DateKey]);
GO

ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT [FK_DimProduct] FOREIGN KEY([ProductKey]) REFERENCES [dbo].[DimProduct] ([ProductKey]);
GO

ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT [FK_DimEmployee] FOREIGN KEY([EmployeeKey]) REFERENCES [dbo].[DimEmployee] ([EmployeeKey]);
GO

ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT [FK_DimShipper] FOREIGN KEY([ShipperKey]) REFERENCES [dbo].[DimShipper] ([ShipperKey]);
GO

