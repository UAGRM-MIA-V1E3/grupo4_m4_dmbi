CREATE PROCEDURE [dbo].[GetProductChangesByRowVersion]
(  
   @startRow BIGINT, 
   @endRow  BIGINT 
)
AS
BEGIN

	SELECT prd.[ProductID]
		  ,prd.[ProductName]
		  ,prd.[SupplierID]
		  ,prd.[CategoryID]
		  ,prd.[QuantityPerUnit]
		  ,prd.[UnitPrice]
		  ,prd.[UnitsInStock]
		  ,prd.[UnitsOnOrder]
		  ,prd.[ReorderLevel]
		  ,prd.[Discontinued]
		  ,cat.[CategoryName]
		  ,cat.[Description]
		  ,spr.[CompanyName]
		  ,spr.[ContactName]
	FROM [Products] prd
	INNER JOIN [Suppliers] spr ON (spr.SupplierID = prd.CategoryID) 
	INNER JOIN [Categories] cat ON (prd.CategoryID = cat.CategoryID)
	WHERE (prd.[rowversion] > CONVERT(ROWVERSION,@startRow) 
		   AND prd.[rowversion] <= CONVERT(ROWVERSION,@endRow))
	OR (spr.[rowversion] > CONVERT(ROWVERSION,@startRow) 
		   AND spr.[rowversion] <= CONVERT(ROWVERSION,@endRow))
	OR (cat.[rowversion] > CONVERT(ROWVERSION,@startRow) 
		   AND cat.[rowversion] <= CONVERT(ROWVERSION,@endRow))
END
GO