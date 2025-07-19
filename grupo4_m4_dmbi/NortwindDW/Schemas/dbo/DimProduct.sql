CREATE TABLE [dbo].[DimProduct]
(
	 product_key BIGINT IDENTITY(1,1) NOT NULL ,
    product_id INT NOT NULL,
    product_name nvarchar(40) NOT NULL,
	quantity_per_unit nvarchar(20),
    unit_price REAL,
	units_in_stock SMALLINT,
	units_on_order SMALLINT,
	ReorderLevel smallint,
    Discontinued smallint, 
    category_name nvarchar(15) NOT NULL, 
    CONSTRAINT [PK_DimProduct] PRIMARY KEY ([product_key])
)
