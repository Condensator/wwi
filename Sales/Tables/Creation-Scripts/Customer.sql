CREATE TABLE [Sales].[Customer](	  [CustomerID] INT NOT NULL IDENTITY(1         ,1)	, [PersonID] INT NULL	, [StoreID] INT NULL	, [TerritoryID] INT NULL	, [AccountNumber] AS (isnull('AW'+[dbo].[ufnLeadingZeros]([CustomerID]),''))	, [rowguid] UNIQUEIDENTIFIER NOT NULL DEFAULT(newid())	, [ModifiedDate] DATETIME NOT NULL DEFAULT(getdate())	, CONSTRAINT [PK_Customer_CustomerID] PRIMARY KEY ([CustomerID] ASC))GOALTER TABLE [Sales].[Customer] WITH CHECK ADD CONSTRAINT [FK_Customer_Store_StoreID] FOREIGN KEY([StoreID]) REFERENCES [Sales].[Store] ([BusinessEntityID])GOALTER TABLE [Sales].[Customer] CHECK CONSTRAINT [FK_Customer_Store_StoreID]GOALTER TABLE [Sales].[Customer] WITH CHECK ADD CONSTRAINT [FK_Customer_SalesTerritory_TerritoryID] FOREIGN KEY([TerritoryID]) REFERENCES [Sales].[SalesTerritory] ([TerritoryID])GOALTER TABLE [Sales].[Customer] CHECK CONSTRAINT [FK_Customer_SalesTerritory_TerritoryID]GOALTER TABLE [Sales].[Customer] WITH CHECK ADD CONSTRAINT [FK_Customer_Person_PersonID] FOREIGN KEY([PersonID]) REFERENCES [Person].[Person] ([BusinessEntityID])GOALTER TABLE [Sales].[Customer] CHECK CONSTRAINT [FK_Customer_Person_PersonID]GOCREATE UNIQUE NONCLUSTERED INDEX [AK_Customer_AccountNumber] ON [Sales].[Customer] ([AccountNumber] ASC)GOCREATE UNIQUE NONCLUSTERED INDEX [AK_Customer_rowguid] ON [Sales].[Customer] ([rowguid] ASC)GOCREATE NONCLUSTERED INDEX [IX_Customer_TerritoryID] ON [Sales].[Customer] ([TerritoryID] ASC)GO