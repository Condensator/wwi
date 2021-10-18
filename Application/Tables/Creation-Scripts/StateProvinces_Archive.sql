SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Application].[StateProvinces_Archive](
	[StateProvinceID] [int] NOT NULL,
	[StateProvinceCode] [nvarchar](5) COLLATE Latin1_General_100_CI_AS NOT NULL,
	[StateProvinceName] [nvarchar](50) COLLATE Latin1_General_100_CI_AS NOT NULL,
	[CountryID] [int] NOT NULL,
	[SalesTerritory] [nvarchar](50) COLLATE Latin1_General_100_CI_AS NOT NULL,
	[Border] [geography] NULL,
	[LatestRecordedPopulation] [bigint] NULL,
	[LastEditedBy] [int] NOT NULL,
	[ValidFrom] [datetime2](7) NOT NULL,
	[ValidTo] [datetime2](7) NOT NULL
)
WITH
(
DATA_COMPRESSION = PAGE
)

GO
