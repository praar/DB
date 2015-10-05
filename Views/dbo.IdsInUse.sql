SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[IdsInUse] AS 
  SELECT [Id], 'Account' AS [Type] , [Name] FROM dbo.[Account] WITH (NOLOCK)
  UNION ALL
  SELECT [Id], 'ActionTemplate' AS [Type] , [Name] FROM dbo.[ActionTemplate] WITH (NOLOCK)
  UNION ALL
  SELECT [Id], 'ApiKey' AS [Type] , [ApiKeyHashed] as [Name] FROM dbo.[ApiKey] WITH (NOLOCK)
  UNION ALL
  SELECT [Id], 'Certificate' AS [Type] , [Name] FROM dbo.[Certificate] WITH (NOLOCK)
  UNION ALL
  SELECT [Id], 'ActivityLogStorageConfiguration, ArtifactStorageConfiguration, BuiltInRepositoryConfiguration, License, MaintenanceConfiguration, SmtpConfiguration, UpgradeAvailability' AS [Type] , '' AS [Name] FROM dbo.[Configuration] WITH (NOLOCK)
  UNION ALL
  SELECT [Id], 'DashboardConfiguration' AS [Type] , '' AS [Name] FROM dbo.[DashboardConfiguration] WITH (NOLOCK)
  UNION ALL
  SELECT [Id], 'DeploymentEnvironment' AS [Type] , [Name] FROM dbo.[DeploymentEnvironment] WITH (NOLOCK)
  UNION ALL
  SELECT [Id], 'DeploymentProcess' AS [Type] , '' AS [Name] FROM dbo.[DeploymentProcess] WITH (NOLOCK)
  UNION ALL
  SELECT [Id], 'Feed' AS [Type] , [Name] FROM dbo.[Feed] WITH (NOLOCK)
  UNION ALL
  SELECT [Id], 'Interruption' AS [Type] , '' AS [Name] FROM dbo.[Interruption] WITH (NOLOCK)
  UNION ALL
  SELECT [Id], 'Invitation' AS [Type] , '' AS [Name] FROM dbo.[Invitation] WITH (NOLOCK)
  UNION ALL
  SELECT [Id], 'LibraryVariableSet' AS [Type] , [Name] FROM dbo.[LibraryVariableSet] WITH (NOLOCK)
  UNION ALL
  SELECT [Id], 'Lifecycle' AS [Type] , [Name] FROM dbo.[Lifecycle] WITH (NOLOCK)
  UNION ALL
  SELECT [Id], 'Machine' AS [Type] , [Name] FROM dbo.[Machine] WITH (NOLOCK)
  UNION ALL
  SELECT [Id], 'IndexedNuGetPackage' AS [Type] , '' AS [Name] FROM dbo.[NuGetPackage] WITH (NOLOCK)
  UNION ALL
  SELECT [Id], 'OctopusServerNode' AS [Type] , [Name] FROM dbo.[OctopusServerNode] WITH (NOLOCK)
  UNION ALL
  SELECT [Id], 'Project' AS [Type] , [Name] FROM dbo.[Project] WITH (NOLOCK)
  UNION ALL
  SELECT [Id], 'ProjectGroup' AS [Type] , [Name] FROM dbo.[ProjectGroup] WITH (NOLOCK)
  UNION ALL
  SELECT [Id], 'Release' AS [Type] , '' AS [Name] FROM dbo.[Release] WITH (NOLOCK)
  UNION ALL
  SELECT [Id], 'Team' AS [Type] , [Name] FROM dbo.[Team] WITH (NOLOCK)
  UNION ALL
  SELECT [Id], 'User' AS [Type] , [Username] as [Name] FROM dbo.[User] WITH (NOLOCK)
  UNION ALL
  SELECT [Id], 'UserRole' AS [Type] , [Name] FROM dbo.[UserRole] WITH (NOLOCK)
  UNION ALL
  SELECT [Id], 'VariableSet' AS [Type] , '' AS [Name] FROM dbo.[VariableSet] WITH (NOLOCK)
GO
