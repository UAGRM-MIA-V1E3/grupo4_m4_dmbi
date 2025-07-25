CREATE TABLE [dbo].[EmployeeTerritories](
	[EmployeeID] [int] NOT NULL,
	[TerritoryID] [nvarchar](20) NOT NULL,
	[rowversion] [timestamp] NULL,
 CONSTRAINT [PK_EmployeeTerritories] PRIMARY KEY NONCLUSTERED 
(
	[EmployeeID] ASC,
	[TerritoryID] ASC
), 
    CONSTRAINT [FK_EmployeeTerritories_Employee] FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employees] ([EmployeeID]), 
    CONSTRAINT [FK_EmployeeTerritories_Territory] FOREIGN KEY ([TerritoryID]) REFERENCES [dbo].[Territories] ([TerritoryID]) 
)