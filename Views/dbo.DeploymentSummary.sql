SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[DeploymentSummary]
AS
SELECT
	db.Id as Id,
	db.Created as Created,
	db.ProjectId as ProjectId,
	db.EnvironmentId as EnvironmentId,
	db.ReleaseId as ReleaseId,
	db.TaskId as TaskId,
	db.[State] as [State],
	db.HasPendingInterruptions as HasPendingInterruptions,
	db.HasWarningsOrErrors as HasWarningsOrErrors,
	db.ErrorMessage as ErrorMessage,
	db.QueueTime as QueueTime,
	db.CompletedTime as CompletedTime,
	db.[Version] as [Version],
	(CASE WHEN [Rank] = 1 THEN 'C' WHEN [Rank] = 2 THEN 'P' ELSE 'A' END) as CurrentOrPrevious 
	FROM
	(
		SELECT d.Id as Id,
			d.Created as Created,
			d.ProjectId as ProjectId,
			d.EnvironmentId as EnvironmentId,
			d.ReleaseId as ReleaseId,
			d.TaskId as TaskId,
			t.[State] as [State],
			t.HasPendingInterruptions as HasPendingInterruptions,
			t.HasWarningsOrErrors as HasWarningsOrErrors,
			t.ErrorMessage as ErrorMessage,
			t.QueueTime as QueueTime,
			t.CompletedTime as CompletedTime,
			r.[Version] as [Version],
			ROW_NUMBER() OVER (PARTITION BY d.EnvironmentId, d.ProjectId ORDER BY Created DESC) as [Rank]
		FROM [Deployment] d
			INNER JOIN [ServerTask] t on t.Id = d.TaskId
			INNER JOIN [Release] r on r.Id = d.ReleaseId
	) db
GO
