CREATE PROCEDURE [dbo].[DW_MergeFactOrders]
AS
BEGIN

	UPDATE dfo
	SET [ProductSK]     = sfo.[ProductSK]
	   ,[CustomerSK]    = sfo.[CustomerSK]
	   ,[EmployeeSK]    = sfo.[EmployeeSK]
	   ,[ShipperSK]     = sfo.[ShipperSK]
	   ,[OrderDateKey]   = sfo.[OrderDateKey]
	   ,[RequiredDateKey]= sfo.[RequiredDateKey]
	   ,[ShippedDateKey] = sfo.[ShippedDateKey]
	   ,[OrderDate]     = sfo.[OrderDate]
	   ,[RequiredDate]  = sfo.[RequiredDate]
	   ,[ShippedDate]   = sfo.[ShippedDate]
	   ,[UnitPrice]     = sfo.[UnitPrice]
	   ,[Quantity]      = sfo.[Quantity]
	   ,[Discount]      = sfo.[Discount]
	   ,[Freight]       = sfo.[Freight]
	   ,[ShipName]      = sfo.[ShipName]
	   ,[ShipAddress]   = sfo.[ShipAddress]
	   ,[ShipCity]      = sfo.[ShipCity]
	   ,[ShipRegion]    = sfo.[ShipRegion]
	   ,[ShipPostalCode]= sfo.[ShipPostalCode]
	   ,[ShipCountry]   = sfo.[ShipCountry]
	FROM [dbo].[FactOrders]        dfo
	INNER JOIN [StagingFactOrders] sfo ON (dfo.[OrderSK]=sfo.[OrderSK])
END
GO

