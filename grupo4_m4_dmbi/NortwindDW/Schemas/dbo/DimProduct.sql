CREATE TABLE [dbo].[DimProduct]
(
	ProductSK [int] IDENTITY(1,1) NOT NULL CONSTRAINT [PK_DimProduct] PRIMARY KEY ,
    [ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](40) NOT NULL,
	[SupplierID] [int] NULL,
	[CategoryID] [int] NULL,
	[QuantityPerUnit] [nvarchar](20) NULL,
	[UnitPrice] [money] NULL,
	[UnitsInStock] [smallint] NULL,
	[UnitsOnOrder] [smallint] NULL,
	[ReorderLevel] [smallint] NULL,
	[Discontinued] [bit] NOT NULL,
	[CategoryName] [nvarchar](15)  NULL,
	[CategoryDescription] [nvarchar](max) NULL,
	[SupplierCompanyName] [nvarchar](40)  NULL,
	[SupplierContactName] [nvarchar](30) NULL,
);
GO
