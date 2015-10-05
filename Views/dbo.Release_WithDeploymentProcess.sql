SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[Release_WithDeploymentProcess]
AS
SELECT [Release].[Id] as Release_Id
      ,[Release].[Version] as Release_Version
      ,[Release].[Assembled] as Release_Assembled
      ,[Release].[ProjectId] as Release_ProjectId
      ,[Release].[ProjectVariableSetSnapshotId] as Release_ProjectVariableSetSnapshotId
      ,[Release].[ProjectDeploymentProcessSnapshotId] as Release_ProjectDeploymentProcessSnapshotId
      ,[Release].[JSON] as Release_JSON
      ,DP.[Id] as DeploymentProcess_Id
      ,DP.[OwnerId] as DeploymentProcess_OwnerId
      ,DP.[IsFrozen] as DeploymentProcess_IsFrozen
      ,DP.[Version] as DeploymentProcess_Version
      ,DP.[JSON] as DeploymentProcess_JSON
  FROM [dbo].[Release] as Release
  INNER JOIN [dbo].[DeploymentProcess] as DP on DP.[Id] = [Release].[ProjectDeploymentProcessSnapshotId]
GO
