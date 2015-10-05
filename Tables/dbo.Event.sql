CREATE TABLE [dbo].[Event]
(
[Id] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RelatedDocumentIds] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProjectId] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EnvironmentId] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Category] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UserId] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Username] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Occurred] [datetimeoffset] NOT NULL,
[Message] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JSON] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[EventInsertUpdateTrigger] ON [dbo].[Event] AFTER INSERT, UPDATE
AS
BEGIN
	-- A trigger! Won't someone please think of the children! 
	-- Actually it's a pretty pragmatic choice for this scenario
	DELETE FROM EventRelatedDocument where EventId in (SELECT Id from INSERTED);

	INSERT INTO EventRelatedDocument (RelatedDocumentId, EventId)
		select Value, Id 
			from INSERTED
				cross apply [fnSplitReferenceCollectionAsTable](RelatedDocumentIds)
END
GO
ALTER TABLE [dbo].[Event] ADD CONSTRAINT [PK_Event_Id] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
