CREATE TABLE [Application].[PaymentMethods_Archive](	  [PaymentMethodID] INT NOT NULL	, [PaymentMethodName] NVARCHAR(50) COLLATE Latin1_General_100_CI_AS NOT NULL	, [LastEditedBy] INT NOT NULL	, [ValidFrom] DATETIME2(7) NOT NULL	, [ValidTo] DATETIME2(7) NOT NULL)GO