CREATE TABLE [dbo].[DeploymentEnvironment]
(
[Id] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SortOrder] [int] NOT NULL,
[JSON] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[DeploymentEnvironment] ADD CONSTRAINT [PK_DeploymentEnvironment_Id] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DeploymentEnvironment] ADD CONSTRAINT [UQ_DeploymentEnvironmentNameUnique] UNIQUE NONCLUSTERED  ([Name]) ON [PRIMARY]
GO
