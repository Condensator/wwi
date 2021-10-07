CREATE TABLE [Production].[WorkOrderRouting](	  [WorkOrderID] INT NOT NULL	, [ProductID] INT NOT NULL	, [OperationSequence] SMALLINT NOT NULL	, [LocationID] SMALLINT NOT NULL	, [ScheduledStartDate] DATETIME NOT NULL	, [ScheduledEndDate] DATETIME NOT NULL	, [ActualStartDate] DATETIME NULL	, [ActualEndDate] DATETIME NULL	, [ActualResourceHrs] DECIMAL(9,4) NULL	, [PlannedCost] MONEY NOT NULL	, [ActualCost] MONEY NULL	, [ModifiedDate] DATETIME NOT NULL DEFAULT(getdate())	, CONSTRAINT [PK_WorkOrderRouting_WorkOrderID_ProductID_OperationSequence] PRIMARY KEY ([WorkOrderID] ASC, [ProductID] ASC, [OperationSequence] ASC))GOALTER TABLE [Production].[WorkOrderRouting] WITH CHECK ADD CONSTRAINT [FK_WorkOrderRouting_WorkOrder_WorkOrderID] FOREIGN KEY([WorkOrderID]) REFERENCES [Production].[WorkOrder] ([WorkOrderID])GOALTER TABLE [Production].[WorkOrderRouting] CHECK CONSTRAINT [FK_WorkOrderRouting_WorkOrder_WorkOrderID]GOALTER TABLE [Production].[WorkOrderRouting] WITH CHECK ADD CONSTRAINT [FK_WorkOrderRouting_Location_LocationID] FOREIGN KEY([LocationID]) REFERENCES [Production].[Location] ([LocationID])GOALTER TABLE [Production].[WorkOrderRouting] CHECK CONSTRAINT [FK_WorkOrderRouting_Location_LocationID]GOCREATE NONCLUSTERED INDEX [IX_WorkOrderRouting_ProductID] ON [Production].[WorkOrderRouting] ([ProductID] ASC)GO