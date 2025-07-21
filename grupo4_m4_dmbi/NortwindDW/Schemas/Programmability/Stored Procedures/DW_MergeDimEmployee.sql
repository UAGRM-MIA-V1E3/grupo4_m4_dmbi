CREATE PROCEDURE [dbo].[DW_MergeDimEmployee]
AS
BEGIN

	UPDATE de
	SET [FirstName]      = se.[FirstName]
	   ,[LastName]       = se.[LastName]
	   ,[Title]          = se.[Title]
	   ,[TitleOfCourtesy]= se.[TitleOfCourtesy]
	   ,[BirthDate]      = se.[BirthDate]
	   ,[HireDate]       = se.[HireDate]
	   ,[Address]        = se.[Address]
	   ,[City]           = se.[City]
	   ,[Region]         = se.[Region]
	   ,[PostalCode]     = se.[PostalCode]
	   ,[Country]        = se.[Country]
	   ,[HomePhone]      = se.[HomePhone]
	   ,[Extension]      = se.[Extension]
	   ,[Photo]          = se.[Photo]
	   ,[Notes]          = se.[Notes]
	   ,[ReportsTo]      = se.[ReportsTo]
	FROM [dbo].[DimEmployee]        de
	INNER JOIN [StagingEmployee] se ON (de.[EmployeeSK]=se.[EmployeeSK])
END
GO
