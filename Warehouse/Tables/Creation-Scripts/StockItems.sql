CREATE TABLE [Warehouse].[StockItems](	  [StockItemID] INT NOT NULL DEFAULT(NEXT VALUE FOR [Sequences].[StockItemID])	, [StockItemName] NVARCHAR(100) COLLATE Latin1_General_CI_AS NOT NULL	, [SupplierID] INT NOT NULL	, [ColorID] INT NULL	, [UnitPackageID] INT NOT NULL	, [OuterPackageID] INT NOT NULL	, [Brand] NVARCHAR(50) COLLATE Latin1_General_CI_AS NULL	, [Size] NVARCHAR(20) COLLATE Latin1_General_CI_AS NULL	, [LeadTimeDays] INT NOT NULL	, [QuantityPerOuter] INT NOT NULL	, [IsChillerStock] BIT NOT NULL	, [Barcode] NVARCHAR(50) COLLATE Latin1_General_CI_AS NULL	, [TaxRate] DECIMAL(18,3) NOT NULL	, [UnitPrice] DECIMAL(18,2) NOT NULL	, [RecommendedRetailPrice] DECIMAL(18,2) NULL	, [TypicalWeightPerUnit] DECIMAL(18,3) NOT NULL	, [MarketingComments] NVARCHAR(MAX) COLLATE Latin1_General_CI_AS NULL	, [InternalComments] NVARCHAR(MAX) COLLATE Latin1_General_CI_AS NULL	, [Photo] VARBINARY(MAX) NULL	, [CustomFields] NVARCHAR(MAX) COLLATE Latin1_General_CI_AS NULL	, [Tags] AS (json_query([CustomFields],N'$.Tags'))	, [SearchDetails] AS (concat([StockItemName],N' ',[MarketingComments]))	, [LastEditedBy] INT NOT NULL	, [ValidFrom] DATETIME2(7) NOT NULL	, [ValidTo] DATETIME2(7) NOT NULL	, CONSTRAINT [PK_Warehouse_StockItems] PRIMARY KEY ([StockItemID] ASC))GOALTER TABLE [Warehouse].[StockItems] WITH CHECK ADD CONSTRAINT [FK_Warehouse_StockItems_UnitPackageID_Warehouse_PackageTypes] FOREIGN KEY([UnitPackageID]) REFERENCES [Warehouse].[PackageTypes] ([PackageTypeID])GOALTER TABLE [Warehouse].[StockItems] CHECK CONSTRAINT [FK_Warehouse_StockItems_UnitPackageID_Warehouse_PackageTypes]GOALTER TABLE [Warehouse].[StockItems] WITH CHECK ADD CONSTRAINT [FK_Warehouse_StockItems_SupplierID_Purchasing_Suppliers] FOREIGN KEY([SupplierID]) REFERENCES [Purchasing].[Suppliers] ([SupplierID])GOALTER TABLE [Warehouse].[StockItems] CHECK CONSTRAINT [FK_Warehouse_StockItems_SupplierID_Purchasing_Suppliers]GOALTER TABLE [Warehouse].[StockItems] WITH CHECK ADD CONSTRAINT [FK_Warehouse_StockItems_OuterPackageID_Warehouse_PackageTypes] FOREIGN KEY([OuterPackageID]) REFERENCES [Warehouse].[PackageTypes] ([PackageTypeID])GOALTER TABLE [Warehouse].[StockItems] CHECK CONSTRAINT [FK_Warehouse_StockItems_OuterPackageID_Warehouse_PackageTypes]GOALTER TABLE [Warehouse].[StockItems] WITH CHECK ADD CONSTRAINT [FK_Warehouse_StockItems_ColorID_Warehouse_Colors] FOREIGN KEY([ColorID]) REFERENCES [Warehouse].[Colors] ([ColorID])GOALTER TABLE [Warehouse].[StockItems] CHECK CONSTRAINT [FK_Warehouse_StockItems_ColorID_Warehouse_Colors]GOALTER TABLE [Warehouse].[StockItems] WITH CHECK ADD CONSTRAINT [FK_Warehouse_StockItems_Application_People] FOREIGN KEY([LastEditedBy]) REFERENCES [Application].[People] ([PersonID])GOALTER TABLE [Warehouse].[StockItems] CHECK CONSTRAINT [FK_Warehouse_StockItems_Application_People]GOCREATE UNIQUE NONCLUSTERED INDEX [UQ_Warehouse_StockItems_StockItemName] ON [Warehouse].[StockItems] ([StockItemName] ASC)GOCREATE NONCLUSTERED INDEX [FK_Warehouse_StockItems_ColorID] ON [Warehouse].[StockItems] ([ColorID] ASC)GOCREATE NONCLUSTERED INDEX [FK_Warehouse_StockItems_OuterPackageID] ON [Warehouse].[StockItems] ([OuterPackageID] ASC)GOCREATE NONCLUSTERED INDEX [FK_Warehouse_StockItems_SupplierID] ON [Warehouse].[StockItems] ([SupplierID] ASC)GOCREATE NONCLUSTERED INDEX [FK_Warehouse_StockItems_UnitPackageID] ON [Warehouse].[StockItems] ([UnitPackageID] ASC)GO