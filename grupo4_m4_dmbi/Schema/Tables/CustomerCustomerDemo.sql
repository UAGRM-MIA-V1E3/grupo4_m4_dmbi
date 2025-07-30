﻿CREATE TABLE [dbo].[CustomerCustomerDemo](
	[CustomerID] [nchar](5) NOT NULL,
	[CustomerTypeID] [nchar](10) NOT NULL,
	[rowversion] [timestamp] NULL,
 CONSTRAINT [PK_CustomerCustomerDemo] PRIMARY KEY NONCLUSTERED 
(
	[CustomerID] ASC,
	[CustomerTypeID] ASC
)) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CustomerCustomerDemo]  WITH CHECK ADD  CONSTRAINT [FK_CustomerCustomerDemo] FOREIGN KEY([CustomerTypeID])
REFERENCES [dbo].[CustomerDemographics] ([CustomerTypeID])
GO

ALTER TABLE [dbo].[CustomerCustomerDemo] CHECK CONSTRAINT [FK_CustomerCustomerDemo]
GO

ALTER TABLE [dbo].[CustomerCustomerDemo]  WITH CHECK ADD  CONSTRAINT [FK_CustomerCustomerDemo_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO

ALTER TABLE [dbo].[CustomerCustomerDemo] CHECK CONSTRAINT [FK_CustomerCustomerDemo_Customers]
GO