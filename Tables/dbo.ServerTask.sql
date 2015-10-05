CREATE TABLE [dbo].[ServerTask]
(
[Id] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QueueTime] [datetimeoffset] NOT NULL,
[StartTime] [datetimeoffset] NULL,
[CompletedTime] [datetimeoffset] NULL,
[ErrorMessage] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ConcurrencyTag] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[State] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HasPendingInterruptions] [bit] NOT NULL,
[HasWarningsOrErrors] [bit] NOT NULL,
[ServerNode] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProjectId] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EnvironmentId] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[JSON] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ServerTask] ADD CONSTRAINT [PK_ServerTask_Id] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ServerTask_Id_State] ON [dbo].[ServerTask] ([Id], [State]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ServerTask_Index] ON [dbo].[ServerTask] ([State], [QueueTime], [HasPendingInterruptions], [ServerNode], [ConcurrencyTag]) ON [PRIMARY]
GO
