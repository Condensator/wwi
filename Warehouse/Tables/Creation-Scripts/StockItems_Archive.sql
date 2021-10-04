CREATE TABLE [Warehouse].[StockItems_Archive](	  [StockItemID] INT NOT NULL	, [StockItemName] NVARCHAR(100) COLLATE Latin1_General_CI_AS NOT NULL	, [SupplierID] INT NOT NULL	, [ColorID] INT NULL	, [UnitPackageID] INT NOT NULL	, [OuterPackageID] INT NOT NULL	, [Brand] NVARCHAR(50) COLLATE Latin1_General_CI_AS NULL	, [Size] NVARCHAR(20) COLLATE Latin1_General_CI_AS NULL	, [LeadTimeDays] INT NOT NULL	, [QuantityPerOuter] INT NOT NULL	, [IsChillerStock] BIT NOT NULL	, [Barcode] NVARCHAR(50) COLLATE Latin1_General_CI_AS NULL	, [TaxRate] DECIMAL(18,3) NOT NULL	, [UnitPrice] DECIMAL(18,2) NOT NULL	, [RecommendedRetailPrice] DECIMAL(18,2) NULL	, [TypicalWeightPerUnit] DECIMAL(18,3) NOT NULL	, [MarketingComments] NVARCHAR(MAX) COLLATE Latin1_General_CI_AS NULL	, [InternalComments] NVARCHAR(MAX) COLLATE Latin1_General_CI_AS NULL	, [Photo] VARBINARY(MAX) NULL	, [CustomFields] NVARCHAR(MAX) COLLATE Latin1_General_CI_AS NULL	, [Tags] NVARCHAR(MAX) COLLATE Latin1_General_CI_AS NULL	, [SearchDetails] NVARCHAR(MAX) COLLATE Latin1_General_CI_AS NOT NULL	, [LastEditedBy] INT NOT NULL	, [ValidFrom] DATETIME2(7) NOT NULL	, [ValidTo] DATETIME2(7) NOT NULL)GO