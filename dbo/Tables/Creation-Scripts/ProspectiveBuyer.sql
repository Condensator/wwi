CREATE TABLE [dbo].[ProspectiveBuyer](	  [ProspectiveBuyerKey] INT NOT NULL IDENTITY(1         ,1)	, [ProspectAlternateKey] NVARCHAR(15) COLLATE Latin1_General_CI_AS NULL	, [FirstName] NVARCHAR(50) COLLATE Latin1_General_CI_AS NULL	, [MiddleName] NVARCHAR(50) COLLATE Latin1_General_CI_AS NULL	, [LastName] NVARCHAR(50) COLLATE Latin1_General_CI_AS NULL	, [BirthDate] DATETIME NULL	, [MaritalStatus] NCHAR(1) COLLATE Latin1_General_CI_AS NULL	, [Gender] NVARCHAR(1) COLLATE Latin1_General_CI_AS NULL	, [EmailAddress] NVARCHAR(50) COLLATE Latin1_General_CI_AS NULL	, [YearlyIncome] MONEY NULL	, [TotalChildren] TINYINT NULL	, [NumberChildrenAtHome] TINYINT NULL	, [Education] NVARCHAR(40) COLLATE Latin1_General_CI_AS NULL	, [Occupation] NVARCHAR(100) COLLATE Latin1_General_CI_AS NULL	, [HouseOwnerFlag] NCHAR(1) COLLATE Latin1_General_CI_AS NULL	, [NumberCarsOwned] TINYINT NULL	, [AddressLine1] NVARCHAR(120) COLLATE Latin1_General_CI_AS NULL	, [AddressLine2] NVARCHAR(120) COLLATE Latin1_General_CI_AS NULL	, [City] NVARCHAR(30) COLLATE Latin1_General_CI_AS NULL	, [StateProvinceCode] NVARCHAR(3) COLLATE Latin1_General_CI_AS NULL	, [PostalCode] NVARCHAR(15) COLLATE Latin1_General_CI_AS NULL	, [Phone] NVARCHAR(20) COLLATE Latin1_General_CI_AS NULL	, [Salutation] NVARCHAR(8) COLLATE Latin1_General_CI_AS NULL	, [Unknown] INT NULL	, CONSTRAINT [PK_ProspectiveBuyer_ProspectiveBuyerKey] PRIMARY KEY ([ProspectiveBuyerKey] ASC))GO