CREATE TABLE [dbo].[stagingFactOrders]
(
	[Order] [INT] NOT NULL,
	[ProductKey] [INT] NOT NULL,
	[CustomerKey] [INT] NULL,
	[EmployeeKey] [INT] NULL,
	[ShipperKey] [INT] NULL,
	[OrderDateKey] [INT] NULL,
	[RequiredDateKey] [INT] NULL,
	[ShippedDateKey] [INT] NULL,
	[OrderDate] [DATETIME] NULL,
	[RequiredDate] [DATETIME] NULL,
	[ShippedDate] [DATETIME] NULL,
	[UnitPrice] [MONEY] NOT NULL,
	[Quantity] [SMALLINT] NOT NULL,
	[Discount] [REAL] NOT NULL,
	[Freight] [MONEY] NULL,
	[ShipName] [NVARCHAR](40) NULL,
	[ShipAddress] [NVARCHAR](60) NULL,
	[ShipCity] [NVARCHAR](15) NULL,
	[ShipRegion] [NVARCHAR](15) NULL,
	[ShipPostalCode] [NVARCHAR](10) NULL,
	[ShipCountry] [NVARCHAR](15) NULL
)
