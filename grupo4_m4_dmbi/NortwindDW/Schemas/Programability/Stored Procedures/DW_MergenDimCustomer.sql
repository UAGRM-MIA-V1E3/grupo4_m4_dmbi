CREATE PROCEDURE [dbo].[DW_MergenDimCustomer]
AS
BEGIN

	UPDATE dc
	SET [CompanyName] = sc.[company_name]
	   ,[ContactName]  = sc.[contact_name]
	   ,[ContactTitle]     = sc.[contact_title]
	   ,[Address]     = sc.[company_name]
	FROM [dbo].[DimCustomer]        dc
	INNER JOIN [StagingCustomer] sc ON (dc.[CustomerKey]=sc.[customerSK])
END
GO