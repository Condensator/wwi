CREATE TYPE [Website].[SensorDataList] AS TABLE(
	[SensorDataListID] [int] IDENTITY(1,1) NOT NULL,
	[ColdRoomSensorNumber] [int] NULL,
	[RecordedWhen] [datetime2](7) NULL,
	[Temperature] [decimal](18, 2) NULL,
	 PRIMARY KEY NONCLUSTERED 
(
	[SensorDataListID] ASC
)
)
WITH ( MEMORY_OPTIMIZED = ON )
GO
