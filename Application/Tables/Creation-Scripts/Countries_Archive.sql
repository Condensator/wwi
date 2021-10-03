CREATE TABLE [Application].[Countries_Archive](	  [CountryID] INT NOT NULL	, [CountryName] NVARCHAR(60) COLLATE Latin1_General_100_CI_AS NOT NULL	, [FormalName] NVARCHAR(60) COLLATE Latin1_General_100_CI_AS NOT NULL	, [IsoAlpha3Code] NVARCHAR(3) COLLATE Latin1_General_100_CI_AS NULL	, [IsoNumericCode] INT NULL	, [CountryType] NVARCHAR(20) COLLATE Latin1_General_100_CI_AS NULL	, [LatestRecordedPopulation] BIGINT NULL	, [Continent] NVARCHAR(30) COLLATE Latin1_General_100_CI_AS NOT NULL	, [Region] NVARCHAR(30) COLLATE Latin1_General_100_CI_AS NOT NULL	, [Subregion] NVARCHAR(30) COLLATE Latin1_General_100_CI_AS NOT NULL	, [Border] GEOGRAPHY NULL	, [LastEditedBy] INT NOT NULL	, [ValidFrom] DATETIME2(7) NOT NULL	, [ValidTo] DATETIME2(7) NOT NULL)GO