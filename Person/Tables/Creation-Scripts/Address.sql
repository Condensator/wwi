CREATE TABLE [Person].[Address](	  [AddressID] INT NOT NULL IDENTITY(1         ,1)	, [AddressLine1] NVARCHAR(60) COLLATE Latin1_General_CI_AS NOT NULL	, [AddressLine2] NVARCHAR(60) COLLATE Latin1_General_CI_AS NULL	, [City] NVARCHAR(30) COLLATE Latin1_General_CI_AS NOT NULL	, [StateProvinceID] INT NOT NULL	, [PostalCode] NVARCHAR(15) COLLATE Latin1_General_CI_AS NOT NULL	, [SpatialLocation] GEOGRAPHY NULL	, [rowguid] UNIQUEIDENTIFIER NOT NULL DEFAULT(newid())	, [ModifiedDate] DATETIME NOT NULL DEFAULT(getdate())	, CONSTRAINT [PK_Address_AddressID] PRIMARY KEY ([AddressID] ASC))GOALTER TABLE [Person].[Address] WITH CHECK ADD CONSTRAINT [FK_Address_StateProvince_StateProvinceID] FOREIGN KEY([StateProvinceID]) REFERENCES [Person].[StateProvince] ([StateProvinceID])GOALTER TABLE [Person].[Address] CHECK CONSTRAINT [FK_Address_StateProvince_StateProvinceID]GOCREATE UNIQUE NONCLUSTERED INDEX [AK_Address_rowguid] ON [Person].[Address] ([rowguid] ASC)GOCREATE UNIQUE NONCLUSTERED INDEX [IX_Address_AddressLine1_AddressLine2_City_StateProvinceID_PostalCode] ON [Person].[Address] ([AddressLine1] ASC, [AddressLine2] ASC, [City] ASC, [StateProvinceID] ASC, [PostalCode] ASC)GOCREATE NONCLUSTERED INDEX [IX_Address_StateProvinceID] ON [Person].[Address] ([StateProvinceID] ASC)GO