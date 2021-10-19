SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Application].[People_Archive](
	[PersonID] [int] NOT NULL,
	[FullName] [nvarchar](50) COLLATE Latin1_General_100_CI_AS NOT NULL,
	[PreferredName] [nvarchar](50) COLLATE Latin1_General_100_CI_AS NOT NULL,
	[SearchName] [nvarchar](101) COLLATE Latin1_General_100_CI_AS NOT NULL,
	[IsPermittedToLogon] [bit] NOT NULL,
	[LogonName] [nvarchar](50) COLLATE Latin1_General_100_CI_AS NULL,
	[IsExternalLogonProvider] [bit] NOT NULL,
	[HashedPassword] [varbinary](max) NULL,
	[IsSystemUser] [bit] NOT NULL,
	[IsEmployee] [bit] NOT NULL,
	[IsSalesperson] [bit] NOT NULL,
	[UserPreferences] [nvarchar](max) COLLATE Latin1_General_100_CI_AS NULL,
	[PhoneNumber] [nvarchar](20) COLLATE Latin1_General_100_CI_AS NULL,
	[FaxNumber] [nvarchar](20) COLLATE Latin1_General_100_CI_AS NULL,
	[EmailAddress] [nvarchar](256) COLLATE Latin1_General_100_CI_AS NULL,
	[Photo] [varbinary](max) NULL,
	[CustomFields] [nvarchar](max) COLLATE Latin1_General_100_CI_AS NULL,
	[OtherLanguages] [nvarchar](max) COLLATE Latin1_General_100_CI_AS NULL,
	[LastEditedBy] [int] NOT NULL,
	[ValidFrom] [datetime2](7) NOT NULL,
	[ValidTo] [datetime2](7) NOT NULL
)
WITH
(
DATA_COMPRESSION = PAGE
)

GO
