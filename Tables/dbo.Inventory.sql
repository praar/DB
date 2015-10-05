CREATE TABLE [dbo].[Inventory]
(
[InventoryId] [int] NOT NULL IDENTITY(1, 1),
[InventoryName] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Inventory] ADD CONSTRAINT [PK_Inventory] PRIMARY KEY CLUSTERED  ([InventoryId]) ON [PRIMARY]
GO
