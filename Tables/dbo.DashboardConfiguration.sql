CREATE TABLE [dbo].[DashboardConfiguration]
(
[Id] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IncludedEnvironmentIds] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IncludedProjectIds] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JSON] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[DashboardConfiguration] ADD CONSTRAINT [PK_DashboardConfiguration_Id] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
