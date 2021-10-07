CREATE TABLE [Person].[PersonPhone](	  [BusinessEntityID] INT NOT NULL	, [PhoneNumber] PHONE COLLATE Latin1_General_CI_AS NOT NULL	, [PhoneNumberTypeID] INT NOT NULL	, [ModifiedDate] DATETIME NOT NULL DEFAULT(getdate())	, CONSTRAINT [PK_PersonPhone_BusinessEntityID_PhoneNumber_PhoneNumberTypeID] PRIMARY KEY ([BusinessEntityID] ASC, [PhoneNumber] ASC, [PhoneNumberTypeID] ASC))GOALTER TABLE [Person].[PersonPhone] WITH CHECK ADD CONSTRAINT [FK_PersonPhone_PhoneNumberType_PhoneNumberTypeID] FOREIGN KEY([PhoneNumberTypeID]) REFERENCES [Person].[PhoneNumberType] ([PhoneNumberTypeID])GOALTER TABLE [Person].[PersonPhone] CHECK CONSTRAINT [FK_PersonPhone_PhoneNumberType_PhoneNumberTypeID]GOALTER TABLE [Person].[PersonPhone] WITH CHECK ADD CONSTRAINT [FK_PersonPhone_Person_BusinessEntityID] FOREIGN KEY([BusinessEntityID]) REFERENCES [Person].[Person] ([BusinessEntityID])GOALTER TABLE [Person].[PersonPhone] CHECK CONSTRAINT [FK_PersonPhone_Person_BusinessEntityID]GOCREATE NONCLUSTERED INDEX [IX_PersonPhone_PhoneNumber] ON [Person].[PersonPhone] ([PhoneNumber] ASC)GO