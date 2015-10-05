CREATE TABLE [dbo].[Items]
(
[ItemId] [int] NOT NULL,
[InventoryId] [int] NOT NULL,
[ItemName] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Quantity] [int] NULL,
[PurchaseDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Items] ADD CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED  ([ItemId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Items] ADD CONSTRAINT [FK_Items_Items] FOREIGN KEY ([InventoryId]) REFERENCES [dbo].[Inventory] ([InventoryId])
GO
