CREATE TABLE [dbo].[DimDate]
(
	date_key BIGINT IDENTITY(1,1) NOT NULL ,
    full_date DATE,
    year INT,
    quarter INT,
    quarter_name VARCHAR(20),
    month INT,
    month_name VARCHAR(20),
    week INT,
    day INT,
    day_name VARCHAR(9), 
    CONSTRAINT [PK_DimDate] PRIMARY KEY ([date_key])
)
