CREATE TABLE [dbo].[Project]
(
[Id] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Slug] [nvarchar] (210) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsDisabled] [bit] NOT NULL,
[VariableSetId] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DeploymentProcessId] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProjectGroupId] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LifecycleId] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AutoCreateRelease] [bit] NOT NULL,
[JSON] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Project] ADD CONSTRAINT [PK_Project_Id] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Project] ADD CONSTRAINT [UQ_ProjectNameUnique] UNIQUE NONCLUSTERED  ([Name]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Project] ADD CONSTRAINT [UQ_ProjectSlugUnique] UNIQUE NONCLUSTERED  ([Slug]) ON [PRIMARY]
GO
