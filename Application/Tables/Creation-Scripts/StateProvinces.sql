CREATE TABLE [Application].[StateProvinces](	  [StateProvinceID] INT NOT NULL DEFAULT(NEXT VALUE FOR [Sequences].[StateProvinceID])	, [StateProvinceCode] NVARCHAR(5) COLLATE Latin1_General_100_CI_AS NOT NULL	, [StateProvinceName] NVARCHAR(50) COLLATE Latin1_General_100_CI_AS NOT NULL	, [CountryID] INT NOT NULL	, [SalesTerritory] NVARCHAR(50) COLLATE Latin1_General_100_CI_AS NOT NULL	, [Border] GEOGRAPHY NULL	, [LatestRecordedPopulation] BIGINT NULL	, [LastEditedBy] INT NOT NULL	, [ValidFrom] DATETIME2(7) NOT NULL	, [ValidTo] DATETIME2(7) NOT NULL	, CONSTRAINT [PK_Application_StateProvinces] PRIMARY KEY ([StateProvinceID] ASC))GOALTER TABLE [Application].[StateProvinces] WITH CHECK ADD CONSTRAINT [FK_Application_StateProvinces_CountryID_Application_Countries] FOREIGN KEY([CountryID]) REFERENCES [Application].[Countries] ([CountryID])GOALTER TABLE [Application].[StateProvinces] CHECK CONSTRAINT [FK_Application_StateProvinces_CountryID_Application_Countries]GOALTER TABLE [Application].[StateProvinces] WITH CHECK ADD CONSTRAINT [FK_Application_StateProvinces_Application_People] FOREIGN KEY([LastEditedBy]) REFERENCES [Application].[People] ([PersonID])GOALTER TABLE [Application].[StateProvinces] CHECK CONSTRAINT [FK_Application_StateProvinces_Application_People]GOCREATE UNIQUE NONCLUSTERED INDEX [UQ_Application_StateProvinces_StateProvinceName] ON [Application].[StateProvinces] ([StateProvinceName] ASC)GOCREATE NONCLUSTERED INDEX [FK_Application_StateProvinces_CountryID] ON [Application].[StateProvinces] ([CountryID] ASC)GOCREATE NONCLUSTERED INDEX [IX_Application_StateProvinces_SalesTerritory] ON [Application].[StateProvinces] ([SalesTerritory] ASC)GO