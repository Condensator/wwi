SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Purchasing].[Suppliers_Archive](
	[SupplierID] [int] NOT NULL,
	[SupplierName] [nvarchar](100) COLLATE Latin1_General_100_CI_AS NOT NULL,
	[SupplierCategoryID] [int] NOT NULL,
	[PrimaryContactPersonID] [int] NOT NULL,
	[AlternateContactPersonID] [int] NOT NULL,
	[DeliveryMethodID] [int] NULL,
	[DeliveryCityID] [int] NOT NULL,
	[PostalCityID] [int] NOT NULL,
	[SupplierReference] [nvarchar](20) COLLATE Latin1_General_100_CI_AS NULL,
	[BankAccountName] [nvarchar](50) COLLATE Latin1_General_100_CI_AS MASKED WITH (FUNCTION = 'default()') NULL,
	[BankAccountBranch] [nvarchar](50) COLLATE Latin1_General_100_CI_AS MASKED WITH (FUNCTION = 'default()') NULL,
	[BankAccountCode] [nvarchar](20) COLLATE Latin1_General_100_CI_AS MASKED WITH (FUNCTION = 'default()') NULL,
	[BankAccountNumber] [nvarchar](20) COLLATE Latin1_General_100_CI_AS MASKED WITH (FUNCTION = 'default()') NULL,
	[BankInternationalCode] [nvarchar](20) COLLATE Latin1_General_100_CI_AS MASKED WITH (FUNCTION = 'default()') NULL,
	[PaymentDays] [int] NOT NULL,
	[InternalComments] [nvarchar](max) COLLATE Latin1_General_100_CI_AS NULL,
	[PhoneNumber] [nvarchar](20) COLLATE Latin1_General_100_CI_AS NOT NULL,
	[FaxNumber] [nvarchar](20) COLLATE Latin1_General_100_CI_AS NOT NULL,
	[WebsiteURL] [nvarchar](256) COLLATE Latin1_General_100_CI_AS NOT NULL,
	[DeliveryAddressLine1] [nvarchar](60) COLLATE Latin1_General_100_CI_AS NOT NULL,
	[DeliveryAddressLine2] [nvarchar](60) COLLATE Latin1_General_100_CI_AS NULL,
	[DeliveryPostalCode] [nvarchar](10) COLLATE Latin1_General_100_CI_AS NOT NULL,
	[DeliveryLocation] [geography] NULL,
	[PostalAddressLine1] [nvarchar](60) COLLATE Latin1_General_100_CI_AS NOT NULL,
	[PostalAddressLine2] [nvarchar](60) COLLATE Latin1_General_100_CI_AS NULL,
	[PostalPostalCode] [nvarchar](10) COLLATE Latin1_General_100_CI_AS NOT NULL,
	[LastEditedBy] [int] NOT NULL,
	[ValidFrom] [datetime2](7) NOT NULL,
	[ValidTo] [datetime2](7) NOT NULL
)
WITH
(
DATA_COMPRESSION = PAGE
)

GO
