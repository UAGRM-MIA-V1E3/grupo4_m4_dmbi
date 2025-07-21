CREATE PROCEDURE [dbo].[DW_MergeDimProduct]
AS
BEGIN

	UPDATE dp
	SET [ProductName]     = sp.[ProductName]
	   ,[QuantityPerUnit] = sp.[QuantityPerUnit]
	   ,[UnitPrice]       = sp.[UnitPrice]
	   ,[UnitsInStock]    = sp.[UnitsInStock]
	   ,[UnitsOnOrder]    = sp.[UnitsOnOrder]
	   ,[ReorderLevel]    = sp.[ReorderLevel]
	   ,[Discontinued]    = sp.[Discontinued]
	   ,[CategoryName]    = sp.[CategoryName]
	   ,[CategoryDescription] = sp.[CategoryDescription]
	   ,[SupplierCompanyName] = sp.[SupplierCompanyName]
	   ,[SupplierContactName] = sp.[SupplierContactName]
	FROM [dbo].[DimProduct]   dp
	INNER JOIN [StagingProduct] sp ON (dp.[ProductSK]=sp.[ProductSK])
END
GO
