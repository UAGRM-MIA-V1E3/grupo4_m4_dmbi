CREATE TABLE [dbo].[StagintProduct]
(
	[productSK]    [int]            NOT NULL,
	[ProductName]  [varchar](40)   NOT NULL,
	[Supplierid]   [int]            NULL,
	[Categoryid]   [int]            NULL,
	[Quantityperunit] [varchar](20) NULL,
	[Unitprice]    [money]         NULL,
	[Unitsinstock] [smallint]     NULL,
	[Unitsonorder] [smallint]     NULL,
	[Reorderlevel] [smallint]     NULL,
	[Discontinued]  [bit]           NOT NULL,
	[CategoryName] [varchar](15)   NULL,
	[Categorydescription] [varchar](max) NULL,
	[SuppliercompanyName] [varchar](40) NULL,
	[SuppliercontactName] [varchar](30) NULL,
);
GO

