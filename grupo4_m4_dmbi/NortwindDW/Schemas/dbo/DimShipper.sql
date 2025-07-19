CREATE TABLE [dbo].[DimShipper]
(
	shipper_key BIGINT IDENTITY(1,1) NOT NULL ,
    shipper_id INT NOT NULL,
    company_name nvarchar(40) NOT NULL, 
    CONSTRAINT [PK_DimShipper] PRIMARY KEY ([shipper_key])
)
