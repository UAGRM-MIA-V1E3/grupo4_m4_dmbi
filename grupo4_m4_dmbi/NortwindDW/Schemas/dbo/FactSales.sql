CREATE TABLE [dbo].[FactSales]
(
    order_key BIGINT IDENTITY(1,1) NOT NULL ,
	orderID BIGINT NOT NULL ,
    employee_key BIGINT NOT NULL,
    shipper_key BIGINT NOT NULL,
    customer_key BIGINT NOT NULL,
    supplier_key BIGINT NOT NULL,
    product_key BIGINT NOT NULL,
    shipinfo_key BIGINT NOT NULL,
	order_date BIGINT NOT NULL,
    required_date int NOT NULL,
    shipped_date int NOT NULL,
    freight REAL,
    unit_price REAL,
    quantity INT,
    discount REAL,
    actual_cost REAL, 
    CONSTRAINT [PK_FactSales] PRIMARY KEY ([shipped_date], [required_date], [order_date], [shipinfo_key], [product_key], [supplier_key], [customer_key], [shipper_key], [employee_key], [orderID], [order_key])
)
