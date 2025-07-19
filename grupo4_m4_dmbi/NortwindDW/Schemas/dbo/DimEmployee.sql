CREATE TABLE [dbo].[DimEmployee]
(
	employee_key BIGINT IDENTITY(1,1) NOT NULL ,
	employee_id INT NOT NULL,
    first_name nvarchar(30) NOT NULL,
	last_name nvarchar(30) NOT NULL,
    title nvarchar(30),
	TitleOfCourtesy nvarchar(25),
    birth_date DATE,
    hire_date DATE,
    address nvarchar(60),
    city nvarchar(15),
    region nvarchar(15),
    country nvarchar(15),
	postal_code nvarchar(10),
    reports_to INT, 
    CONSTRAINT [PK_DimEmployee] PRIMARY KEY ([employee_key])
)
