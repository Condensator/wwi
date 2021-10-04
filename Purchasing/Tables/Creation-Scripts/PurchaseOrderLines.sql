CREATE TABLE [Purchasing].[PurchaseOrderLines](	  [PurchaseOrderLineID] INT NOT NULL DEFAULT(NEXT VALUE FOR [Sequences].[PurchaseOrderLineID])	, [PurchaseOrderID] INT NOT NULL	, [StockItemID] INT NOT NULL	, [OrderedOuters] INT NOT NULL	, [Description] NVARCHAR(100) COLLATE Latin1_General_CI_AS NOT NULL	, [ReceivedOuters] INT NOT NULL	, [PackageTypeID] INT NOT NULL	, [ExpectedUnitPricePerOuter] DECIMAL(18,2) NULL	, [LastReceiptDate] DATE NULL	, [IsOrderLineFinalized] BIT NOT NULL	, [LastEditedBy] INT NOT NULL	, [LastEditedWhen] DATETIME2(7) NOT NULL DEFAULT(sysdatetime())	, CONSTRAINT [PK_Purchasing_PurchaseOrderLines] PRIMARY KEY ([PurchaseOrderLineID] ASC))GOALTER TABLE [Purchasing].[PurchaseOrderLines] WITH CHECK ADD CONSTRAINT [FK_Purchasing_PurchaseOrderLines_StockItemID_Warehouse_StockItems] FOREIGN KEY([StockItemID]) REFERENCES [Warehouse].[StockItems] ([StockItemID])GOALTER TABLE [Purchasing].[PurchaseOrderLines] CHECK CONSTRAINT [FK_Purchasing_PurchaseOrderLines_StockItemID_Warehouse_StockItems]GOALTER TABLE [Purchasing].[PurchaseOrderLines] WITH CHECK ADD CONSTRAINT [FK_Purchasing_PurchaseOrderLines_PurchaseOrderID_Purchasing_PurchaseOrders] FOREIGN KEY([PurchaseOrderID]) REFERENCES [Purchasing].[PurchaseOrders] ([PurchaseOrderID])GOALTER TABLE [Purchasing].[PurchaseOrderLines] CHECK CONSTRAINT [FK_Purchasing_PurchaseOrderLines_PurchaseOrderID_Purchasing_PurchaseOrders]GOALTER TABLE [Purchasing].[PurchaseOrderLines] WITH CHECK ADD CONSTRAINT [FK_Purchasing_PurchaseOrderLines_PackageTypeID_Warehouse_PackageTypes] FOREIGN KEY([PackageTypeID]) REFERENCES [Warehouse].[PackageTypes] ([PackageTypeID])GOALTER TABLE [Purchasing].[PurchaseOrderLines] CHECK CONSTRAINT [FK_Purchasing_PurchaseOrderLines_PackageTypeID_Warehouse_PackageTypes]GOALTER TABLE [Purchasing].[PurchaseOrderLines] WITH CHECK ADD CONSTRAINT [FK_Purchasing_PurchaseOrderLines_Application_People] FOREIGN KEY([LastEditedBy]) REFERENCES [Application].[People] ([PersonID])GOALTER TABLE [Purchasing].[PurchaseOrderLines] CHECK CONSTRAINT [FK_Purchasing_PurchaseOrderLines_Application_People]GOCREATE NONCLUSTERED INDEX [FK_Purchasing_PurchaseOrderLines_PackageTypeID] ON [Purchasing].[PurchaseOrderLines] ([PackageTypeID] ASC)GOCREATE NONCLUSTERED INDEX [FK_Purchasing_PurchaseOrderLines_PurchaseOrderID] ON [Purchasing].[PurchaseOrderLines] ([PurchaseOrderID] ASC)GOCREATE NONCLUSTERED INDEX [FK_Purchasing_PurchaseOrderLines_StockItemID] ON [Purchasing].[PurchaseOrderLines] ([StockItemID] ASC)GOCREATE NONCLUSTERED INDEX [IX_Purchasing_PurchaseOrderLines_Perf_20160301_4] ON [Purchasing].[PurchaseOrderLines] ([IsOrderLineFinalized] ASC, [StockItemID] ASC)INCLUDE ([OrderedOuters], [ReceivedOuters])GO