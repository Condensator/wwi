CREATE TABLE [Warehouse].[StockGroups](	  [StockGroupID] INT NOT NULL DEFAULT(NEXT VALUE FOR [Sequences].[StockGroupID])	, [StockGroupName] NVARCHAR(50) COLLATE Latin1_General_CI_AS NOT NULL	, [LastEditedBy] INT NOT NULL	, [ValidFrom] DATETIME2(7) NOT NULL	, [ValidTo] DATETIME2(7) NOT NULL	, CONSTRAINT [PK_Warehouse_StockGroups] PRIMARY KEY ([StockGroupID] ASC))GOALTER TABLE [Warehouse].[StockGroups] WITH CHECK ADD CONSTRAINT [FK_Warehouse_StockGroups_Application_People] FOREIGN KEY([LastEditedBy]) REFERENCES [Application].[People] ([PersonID])GOALTER TABLE [Warehouse].[StockGroups] CHECK CONSTRAINT [FK_Warehouse_StockGroups_Application_People]GOCREATE UNIQUE NONCLUSTERED INDEX [UQ_Warehouse_StockGroups_StockGroupName] ON [Warehouse].[StockGroups] ([StockGroupName] ASC)GO