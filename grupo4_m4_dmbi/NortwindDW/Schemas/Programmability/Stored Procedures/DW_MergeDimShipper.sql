﻿CREATE PROCEDURE [dbo].[DW_MergeDimShipper]
AS
BEGIN

	UPDATE ds
	SET [CompanyName]  = ss.[CompanyName]
	   ,[Phone]        = ss.[Phone]
	FROM [dbo].[DimShipper]        ds
	INNER JOIN [StagingShipper] ss ON (ds.[ShipperSK]=ss.[ShipperSK])
END
GO