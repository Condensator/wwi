CREATE TABLE [HumanResources].[EmployeePayHistory](	  [BusinessEntityID] INT NOT NULL	, [RateChangeDate] DATETIME NOT NULL	, [Rate] MONEY NOT NULL	, [PayFrequency] TINYINT NOT NULL	, [ModifiedDate] DATETIME NOT NULL DEFAULT(getdate())	, CONSTRAINT [PK_EmployeePayHistory_BusinessEntityID_RateChangeDate] PRIMARY KEY ([BusinessEntityID] ASC, [RateChangeDate] ASC))GOALTER TABLE [HumanResources].[EmployeePayHistory] WITH CHECK ADD CONSTRAINT [FK_EmployeePayHistory_Employee_BusinessEntityID] FOREIGN KEY([BusinessEntityID]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID])GOALTER TABLE [HumanResources].[EmployeePayHistory] CHECK CONSTRAINT [FK_EmployeePayHistory_Employee_BusinessEntityID]GO