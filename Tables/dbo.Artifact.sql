CREATE TABLE [dbo].[Artifact]
(
[Id] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Filename] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RelatedDocumentIds] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Created] [datetimeoffset] NOT NULL,
[ProjectId] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EnvironmentId] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[JSON] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Artifact] ADD CONSTRAINT [PK_Artifact_Id] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
