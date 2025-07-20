CREATE PROCEDURE [dbo].[GetCustomerChangesByRowVersion]
(  
   @startRow BIGINT, 
   @endRow  BIGINT 
)
AS
BEGIN
	SELECT [CustomerID]
		  ,[CompanyName]
		  ,[ContactName]
		  ,[ContactTitle]
		  ,[Address]
		  ,[City]
		  ,[Region]
		  ,[PostalCode]
		  ,[Country]
		  ,[Phone]
		  ,[Fax]
	  FROM [customers]
	  WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	  AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END
GO
