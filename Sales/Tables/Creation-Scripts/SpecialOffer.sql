CREATE TABLE [Sales].[SpecialOffer](	  [SpecialOfferID] INT NOT NULL IDENTITY(1         ,1)	, [Description] NVARCHAR(255) COLLATE Latin1_General_CI_AS NOT NULL	, [DiscountPct] SMALLMONEY NOT NULL DEFAULT((0.00))	, [Type] NVARCHAR(50) COLLATE Latin1_General_CI_AS NOT NULL	, [Category] NVARCHAR(50) COLLATE Latin1_General_CI_AS NOT NULL	, [StartDate] DATETIME NOT NULL	, [EndDate] DATETIME NOT NULL	, [MinQty] INT NOT NULL DEFAULT((0))	, [MaxQty] INT NULL	, [rowguid] UNIQUEIDENTIFIER NOT NULL DEFAULT(newid())	, [ModifiedDate] DATETIME NOT NULL DEFAULT(getdate())	, CONSTRAINT [PK_SpecialOffer_SpecialOfferID] PRIMARY KEY ([SpecialOfferID] ASC))GOCREATE UNIQUE NONCLUSTERED INDEX [AK_SpecialOffer_rowguid] ON [Sales].[SpecialOffer] ([rowguid] ASC)GO