CREATE TABLE [Application].[TransactionTypes](	  [TransactionTypeID] INT NOT NULL DEFAULT(NEXT VALUE FOR [Sequences].[TransactionTypeID])	, [TransactionTypeName] NVARCHAR(50) COLLATE Latin1_General_100_CI_AS NOT NULL	, [LastEditedBy] INT NOT NULL	, [ValidFrom] DATETIME2(7) NOT NULL	, [ValidTo] DATETIME2(7) NOT NULL	, CONSTRAINT [PK_Application_TransactionTypes] PRIMARY KEY ([TransactionTypeID] ASC))GOALTER TABLE [Application].[TransactionTypes] WITH CHECK ADD CONSTRAINT [FK_Application_TransactionTypes_Application_People] FOREIGN KEY([LastEditedBy]) REFERENCES [Application].[People] ([PersonID])GOALTER TABLE [Application].[TransactionTypes] CHECK CONSTRAINT [FK_Application_TransactionTypes_Application_People]GOCREATE UNIQUE NONCLUSTERED INDEX [UQ_Application_TransactionTypes_TransactionTypeName] ON [Application].[TransactionTypes] ([TransactionTypeName] ASC)GO