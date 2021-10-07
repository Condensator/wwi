CREATE TABLE [Sales].[Invoices](	  [InvoiceID] INT NOT NULL DEFAULT(NEXT VALUE FOR [Sequences].[InvoiceID])	, [CustomerID] INT NOT NULL	, [BillToCustomerID] INT NOT NULL	, [OrderID] INT NULL	, [DeliveryMethodID] INT NOT NULL	, [ContactPersonID] INT NOT NULL	, [AccountsPersonID] INT NOT NULL	, [SalespersonPersonID] INT NOT NULL	, [PackedByPersonID] INT NOT NULL	, [InvoiceDate] DATE NOT NULL	, [CustomerPurchaseOrderNumber] NVARCHAR(20) COLLATE Latin1_General_100_CI_AS NULL	, [IsCreditNote] BIT NOT NULL	, [CreditNoteReason] NVARCHAR(MAX) COLLATE Latin1_General_100_CI_AS NULL	, [Comments] NVARCHAR(MAX) COLLATE Latin1_General_100_CI_AS NULL	, [DeliveryInstructions] NVARCHAR(MAX) COLLATE Latin1_General_100_CI_AS NULL	, [InternalComments] NVARCHAR(MAX) COLLATE Latin1_General_100_CI_AS NULL	, [TotalDryItems] INT NOT NULL	, [TotalChillerItems] INT NOT NULL	, [DeliveryRun] NVARCHAR(5) COLLATE Latin1_General_100_CI_AS NULL	, [RunPosition] NVARCHAR(5) COLLATE Latin1_General_100_CI_AS NULL	, [ReturnedDeliveryData] NVARCHAR(MAX) COLLATE Latin1_General_100_CI_AS NULL	, [ConfirmedDeliveryTime] AS (TRY_CONVERT([datetime2](7),json_value([ReturnedDeliveryData],N'$.DeliveredWhen'),(126)))	, [ConfirmedReceivedBy] AS (json_value([ReturnedDeliveryData],N'$.ReceivedBy'))	, [LastEditedBy] INT NOT NULL	, [LastEditedWhen] DATETIME2(7) NOT NULL DEFAULT(sysdatetime())	, CONSTRAINT [PK_Sales_Invoices] PRIMARY KEY ([InvoiceID] ASC))GOALTER TABLE [Sales].[Invoices] WITH CHECK ADD CONSTRAINT [FK_Sales_Invoices_SalespersonPersonID_Application_People] FOREIGN KEY([SalespersonPersonID]) REFERENCES [Application].[People] ([PersonID])GOALTER TABLE [Sales].[Invoices] CHECK CONSTRAINT [FK_Sales_Invoices_SalespersonPersonID_Application_People]GOALTER TABLE [Sales].[Invoices] WITH CHECK ADD CONSTRAINT [FK_Sales_Invoices_PackedByPersonID_Application_People] FOREIGN KEY([PackedByPersonID]) REFERENCES [Application].[People] ([PersonID])GOALTER TABLE [Sales].[Invoices] CHECK CONSTRAINT [FK_Sales_Invoices_PackedByPersonID_Application_People]GOALTER TABLE [Sales].[Invoices] WITH CHECK ADD CONSTRAINT [FK_Sales_Invoices_OrderID_Sales_Orders] FOREIGN KEY([OrderID]) REFERENCES [Sales].[Orders] ([OrderID])GOALTER TABLE [Sales].[Invoices] CHECK CONSTRAINT [FK_Sales_Invoices_OrderID_Sales_Orders]GOALTER TABLE [Sales].[Invoices] WITH CHECK ADD CONSTRAINT [FK_Sales_Invoices_DeliveryMethodID_Application_DeliveryMethods] FOREIGN KEY([DeliveryMethodID]) REFERENCES [Application].[DeliveryMethods] ([DeliveryMethodID])GOALTER TABLE [Sales].[Invoices] CHECK CONSTRAINT [FK_Sales_Invoices_DeliveryMethodID_Application_DeliveryMethods]GOALTER TABLE [Sales].[Invoices] WITH CHECK ADD CONSTRAINT [FK_Sales_Invoices_CustomerID_Sales_Customers] FOREIGN KEY([CustomerID]) REFERENCES [Sales].[Customers] ([CustomerID])GOALTER TABLE [Sales].[Invoices] CHECK CONSTRAINT [FK_Sales_Invoices_CustomerID_Sales_Customers]GOALTER TABLE [Sales].[Invoices] WITH CHECK ADD CONSTRAINT [FK_Sales_Invoices_ContactPersonID_Application_People] FOREIGN KEY([ContactPersonID]) REFERENCES [Application].[People] ([PersonID])GOALTER TABLE [Sales].[Invoices] CHECK CONSTRAINT [FK_Sales_Invoices_ContactPersonID_Application_People]GOALTER TABLE [Sales].[Invoices] WITH CHECK ADD CONSTRAINT [FK_Sales_Invoices_BillToCustomerID_Sales_Customers] FOREIGN KEY([BillToCustomerID]) REFERENCES [Sales].[Customers] ([CustomerID])GOALTER TABLE [Sales].[Invoices] CHECK CONSTRAINT [FK_Sales_Invoices_BillToCustomerID_Sales_Customers]GOALTER TABLE [Sales].[Invoices] WITH CHECK ADD CONSTRAINT [FK_Sales_Invoices_Application_People] FOREIGN KEY([LastEditedBy]) REFERENCES [Application].[People] ([PersonID])GOALTER TABLE [Sales].[Invoices] CHECK CONSTRAINT [FK_Sales_Invoices_Application_People]GOALTER TABLE [Sales].[Invoices] WITH CHECK ADD CONSTRAINT [FK_Sales_Invoices_AccountsPersonID_Application_People] FOREIGN KEY([AccountsPersonID]) REFERENCES [Application].[People] ([PersonID])GOALTER TABLE [Sales].[Invoices] CHECK CONSTRAINT [FK_Sales_Invoices_AccountsPersonID_Application_People]GOCREATE NONCLUSTERED INDEX [FK_Sales_Invoices_CustomerID] ON [Sales].[Invoices] ([CustomerID] ASC)GOCREATE NONCLUSTERED INDEX [FK_Sales_Invoices_BillToCustomerID] ON [Sales].[Invoices] ([BillToCustomerID] ASC)GOCREATE NONCLUSTERED INDEX [FK_Sales_Invoices_OrderID] ON [Sales].[Invoices] ([OrderID] ASC)GOCREATE NONCLUSTERED INDEX [FK_Sales_Invoices_DeliveryMethodID] ON [Sales].[Invoices] ([DeliveryMethodID] ASC)GOCREATE NONCLUSTERED INDEX [FK_Sales_Invoices_ContactPersonID] ON [Sales].[Invoices] ([ContactPersonID] ASC)GOCREATE NONCLUSTERED INDEX [FK_Sales_Invoices_AccountsPersonID] ON [Sales].[Invoices] ([AccountsPersonID] ASC)GOCREATE NONCLUSTERED INDEX [FK_Sales_Invoices_SalespersonPersonID] ON [Sales].[Invoices] ([SalespersonPersonID] ASC)GOCREATE NONCLUSTERED INDEX [FK_Sales_Invoices_PackedByPersonID] ON [Sales].[Invoices] ([PackedByPersonID] ASC)GOCREATE NONCLUSTERED INDEX [IX_Sales_Invoices_ConfirmedDeliveryTime] ON [Sales].[Invoices] ([ConfirmedDeliveryTime] ASC)INCLUDE ([ConfirmedReceivedBy])GO