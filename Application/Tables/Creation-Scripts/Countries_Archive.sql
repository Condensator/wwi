SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Application].[Countries_Archive](
	[CountryID] [int] NOT NULL,
	[CountryName] [nvarchar](60) COLLATE Latin1_General_100_CI_AS NOT NULL,
	[FormalName] [nvarchar](60) COLLATE Latin1_General_100_CI_AS NOT NULL,
	[IsoAlpha3Code] [nvarchar](3) COLLATE Latin1_General_100_CI_AS NULL,
	[IsoNumericCode] [int] NULL,
	[CountryType] [nvarchar](20) COLLATE Latin1_General_100_CI_AS NULL,
	[LatestRecordedPopulation] [bigint] NULL,
	[Continent] [nvarchar](30) COLLATE Latin1_General_100_CI_AS NOT NULL,
	[Region] [nvarchar](30) COLLATE Latin1_General_100_CI_AS NOT NULL,
	[Subregion] [nvarchar](30) COLLATE Latin1_General_100_CI_AS NOT NULL,
	[Border] [geography] NULL,
	[LastEditedBy] [int] NOT NULL,
	[ValidFrom] [datetime2](7) NOT NULL,
	[ValidTo] [datetime2](7) NOT NULL
)
WITH
(
DATA_COMPRESSION = PAGE
)

GO
