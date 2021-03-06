SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Warehouse].[StockItemTransactions](
	[StockItemTransactionID] [int] NOT NULL,
	[StockItemID] [int] NOT NULL,
	[TransactionTypeID] [int] NOT NULL,
	[CustomerID] [int] NULL,
	[InvoiceID] [int] NULL,
	[SupplierID] [int] NULL,
	[PurchaseOrderID] [int] NULL,
	[TransactionOccurredWhen] [datetime2](7) NOT NULL,
	[Quantity] [decimal](18, 3) NOT NULL,
	[LastEditedBy] [int] NOT NULL,
	[LastEditedWhen] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Warehouse_StockItemTransactions] PRIMARY KEY NONCLUSTERED 
(
	[StockItemTransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [Warehouse].[StockItemTransactions] ADD  CONSTRAINT [DF_Warehouse_StockItemTransactions_StockItemTransactionID]  DEFAULT (NEXT VALUE FOR [Sequences].[TransactionID]) FOR [StockItemTransactionID]
GO
ALTER TABLE [Warehouse].[StockItemTransactions] ADD  CONSTRAINT [DF_Warehouse_StockItemTransactions_LastEditedWhen]  DEFAULT (sysdatetime()) FOR [LastEditedWhen]
GO
ALTER TABLE [Warehouse].[StockItemTransactions]  WITH CHECK ADD  CONSTRAINT [FK_Warehouse_StockItemTransactions_Application_People] FOREIGN KEY([LastEditedBy])
REFERENCES [Application].[People] ([PersonID])
GO
ALTER TABLE [Warehouse].[StockItemTransactions] CHECK CONSTRAINT [FK_Warehouse_StockItemTransactions_Application_People]
GO
ALTER TABLE [Warehouse].[StockItemTransactions]  WITH CHECK ADD  CONSTRAINT [FK_Warehouse_StockItemTransactions_CustomerID_Sales_Customers] FOREIGN KEY([CustomerID])
REFERENCES [Sales].[Customers] ([CustomerID])
GO
ALTER TABLE [Warehouse].[StockItemTransactions] CHECK CONSTRAINT [FK_Warehouse_StockItemTransactions_CustomerID_Sales_Customers]
GO
ALTER TABLE [Warehouse].[StockItemTransactions]  WITH CHECK ADD  CONSTRAINT [FK_Warehouse_StockItemTransactions_InvoiceID_Sales_Invoices] FOREIGN KEY([InvoiceID])
REFERENCES [Sales].[Invoices] ([InvoiceID])
GO
ALTER TABLE [Warehouse].[StockItemTransactions] CHECK CONSTRAINT [FK_Warehouse_StockItemTransactions_InvoiceID_Sales_Invoices]
GO
ALTER TABLE [Warehouse].[StockItemTransactions]  WITH CHECK ADD  CONSTRAINT [FK_Warehouse_StockItemTransactions_PurchaseOrderID_Purchasing_PurchaseOrders] FOREIGN KEY([PurchaseOrderID])
REFERENCES [Purchasing].[PurchaseOrders] ([PurchaseOrderID])
GO
ALTER TABLE [Warehouse].[StockItemTransactions] CHECK CONSTRAINT [FK_Warehouse_StockItemTransactions_PurchaseOrderID_Purchasing_PurchaseOrders]
GO
ALTER TABLE [Warehouse].[StockItemTransactions]  WITH CHECK ADD  CONSTRAINT [FK_Warehouse_StockItemTransactions_StockItemID_Warehouse_StockItems] FOREIGN KEY([StockItemID])
REFERENCES [Warehouse].[StockItems] ([StockItemID])
GO
ALTER TABLE [Warehouse].[StockItemTransactions] CHECK CONSTRAINT [FK_Warehouse_StockItemTransactions_StockItemID_Warehouse_StockItems]
GO
ALTER TABLE [Warehouse].[StockItemTransactions]  WITH CHECK ADD  CONSTRAINT [FK_Warehouse_StockItemTransactions_SupplierID_Purchasing_Suppliers] FOREIGN KEY([SupplierID])
REFERENCES [Purchasing].[Suppliers] ([SupplierID])
GO
ALTER TABLE [Warehouse].[StockItemTransactions] CHECK CONSTRAINT [FK_Warehouse_StockItemTransactions_SupplierID_Purchasing_Suppliers]
GO
ALTER TABLE [Warehouse].[StockItemTransactions]  WITH CHECK ADD  CONSTRAINT [FK_Warehouse_StockItemTransactions_TransactionTypeID_Application_TransactionTypes] FOREIGN KEY([TransactionTypeID])
REFERENCES [Application].[TransactionTypes] ([TransactionTypeID])
GO
ALTER TABLE [Warehouse].[StockItemTransactions] CHECK CONSTRAINT [FK_Warehouse_StockItemTransactions_TransactionTypeID_Application_TransactionTypes]
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Numeric ID used to refer to a stock item transaction within the database' , @level0type=N'SCHEMA',@level0name=N'Warehouse', @level1type=N'TABLE',@level1name=N'StockItemTransactions', @level2type=N'COLUMN',@level2name=N'StockItemTransactionID'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'StockItem for this transaction' , @level0type=N'SCHEMA',@level0name=N'Warehouse', @level1type=N'TABLE',@level1name=N'StockItemTransactions', @level2type=N'COLUMN',@level2name=N'StockItemID'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Type of transaction' , @level0type=N'SCHEMA',@level0name=N'Warehouse', @level1type=N'TABLE',@level1name=N'StockItemTransactions', @level2type=N'COLUMN',@level2name=N'TransactionTypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Customer for this transaction (if applicable)' , @level0type=N'SCHEMA',@level0name=N'Warehouse', @level1type=N'TABLE',@level1name=N'StockItemTransactions', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'ID of an invoice (for transactions associated with an invoice)' , @level0type=N'SCHEMA',@level0name=N'Warehouse', @level1type=N'TABLE',@level1name=N'StockItemTransactions', @level2type=N'COLUMN',@level2name=N'InvoiceID'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Supplier for this stock transaction (if applicable)' , @level0type=N'SCHEMA',@level0name=N'Warehouse', @level1type=N'TABLE',@level1name=N'StockItemTransactions', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'ID of an purchase order (for transactions associated with a purchase order)' , @level0type=N'SCHEMA',@level0name=N'Warehouse', @level1type=N'TABLE',@level1name=N'StockItemTransactions', @level2type=N'COLUMN',@level2name=N'PurchaseOrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Date and time when the transaction occurred' , @level0type=N'SCHEMA',@level0name=N'Warehouse', @level1type=N'TABLE',@level1name=N'StockItemTransactions', @level2type=N'COLUMN',@level2name=N'TransactionOccurredWhen'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Quantity of stock movement (positive is incoming stock, negative is outgoing)' , @level0type=N'SCHEMA',@level0name=N'Warehouse', @level1type=N'TABLE',@level1name=N'StockItemTransactions', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Transactions covering all movements of all stock items' , @level0type=N'SCHEMA',@level0name=N'Warehouse', @level1type=N'TABLE',@level1name=N'StockItemTransactions'
GO
