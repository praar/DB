CREATE TABLE [dbo].[User]
(
[Id] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Username] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsActive] [bit] NOT NULL,
[IsService] [bit] NOT NULL,
[IdentificationToken] [uniqueidentifier] NOT NULL,
[JSON] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[User] ADD CONSTRAINT [PK_User_Id] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[User] ADD CONSTRAINT [UQ_UserUsernameUnique] UNIQUE NONCLUSTERED  ([Username]) ON [PRIMARY]
GO
