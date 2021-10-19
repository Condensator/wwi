SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Warehouse].[ColdRoomTemperatures_Archive](
	[ColdRoomTemperatureID] [bigint] NOT NULL,
	[ColdRoomSensorNumber] [int] NOT NULL,
	[RecordedWhen] [datetime2](7) NOT NULL,
	[Temperature] [decimal](10, 2) NOT NULL,
	[ValidFrom] [datetime2](7) NOT NULL,
	[ValidTo] [datetime2](7) NOT NULL
)
WITH
(
DATA_COMPRESSION = PAGE
)

GO
