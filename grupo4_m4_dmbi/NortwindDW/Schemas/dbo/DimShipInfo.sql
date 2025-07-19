CREATE TABLE [dbo].[DimShipInfo]
(
	shipinfo_key BIGINT IDENTITY(1,1) NOT NULL ,
    customer_key INT,
    ship_address nvarchar(60),
    ship_city nvarchar(15),
    ship_region nvarchar(15),
    ship_country nvarchar(15), 
    CONSTRAINT [PK_DimShipInfo] PRIMARY KEY ([shipinfo_key])
)
