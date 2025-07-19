CREATE TABLE [dbo].[DimCustomer]
(
	customer_key BIGINT IDENTITY(1,1) NOT NULL ,
    customer_id char(10) NOT NULL,
    company_name varchar(40) NOT NULL,
    contact_name varchar(30),
    contact_title varchar(50), 
    CONSTRAINT [PK_DimCustomer] PRIMARY KEY ([customer_key])
)
