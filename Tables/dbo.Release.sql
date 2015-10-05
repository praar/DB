CREATE TABLE [dbo].[Release]
(
[Id] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Version] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Assembled] [datetimeoffset] NOT NULL,
[ProjectId] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProjectVariableSetSnapshotId] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProjectDeploymentProcessSnapshotId] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JSON] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Release] ADD CONSTRAINT [PK_Release_Id] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Release] ADD CONSTRAINT [UQ_ReleaseVersionUnique] UNIQUE NONCLUSTERED  ([Version], [ProjectId]) ON [PRIMARY]
GO
