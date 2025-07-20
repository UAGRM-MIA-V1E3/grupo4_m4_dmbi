CREATE TABLE [dbo].[StagingCustomer]
(
	[customerSK] [int] NOT NULL,
	[customerid] [nchar](5) NOT NULL,
	[companyname] [nvarchar](40) NOT NULL,
	[contactname] [nvarchar](30) NULL,
	[contacttitle] [nvarchar](30) NULL,
	[address] [nvarchar](60) NULL,
	[city] [nvarchar](15) NULL,
	[region] [nvarchar](15) NULL,
	[postalcode] [nvarchar](10) NULL,
	[country] [nvarchar](15) NULL,
	[phone] [nvarchar](24) NULL,
	[fax] [nvarchar](24) NULL,

);
GO
