CREATE TABLE [dbo].[DimSupplier]
(
	supplier_key BIGINT IDENTITY(1,1) NOT NULL ,
    supplier_id INT NOT NULL,
    company_name nvarchar(40) NOT NULL,
    contact_title nvarchar(30),
    address nvarchar(60),
    city nvarchar(15),
    region nvarchar(15),
    country nvarchar(15),
	postal_code nvarchar(10), 
    CONSTRAINT [PK_DimSupplier] PRIMARY KEY ([supplier_key])
)
