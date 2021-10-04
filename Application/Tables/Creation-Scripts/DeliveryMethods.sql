CREATE TABLE [Application].[DeliveryMethods](	  [DeliveryMethodID] INT NOT NULL DEFAULT(NEXT VALUE FOR [Sequences].[DeliveryMethodID])	, [DeliveryMethodName] NVARCHAR(50) COLLATE Latin1_General_CI_AS NOT NULL	, [LastEditedBy] INT NOT NULL	, [ValidFrom] DATETIME2(7) NOT NULL	, [ValidTo] DATETIME2(7) NOT NULL	, CONSTRAINT [PK_Application_DeliveryMethods] PRIMARY KEY ([DeliveryMethodID] ASC))GOALTER TABLE [Application].[DeliveryMethods] WITH CHECK ADD CONSTRAINT [FK_Application_DeliveryMethods_Application_People] FOREIGN KEY([LastEditedBy]) REFERENCES [Application].[People] ([PersonID])GOALTER TABLE [Application].[DeliveryMethods] CHECK CONSTRAINT [FK_Application_DeliveryMethods_Application_People]GOCREATE UNIQUE NONCLUSTERED INDEX [UQ_Application_DeliveryMethods_DeliveryMethodName] ON [Application].[DeliveryMethods] ([DeliveryMethodName] ASC)GO