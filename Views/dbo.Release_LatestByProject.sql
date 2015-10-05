SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[Release_LatestByProject]
AS
SELECT * FROM (
	SELECT *, ROW_NUMBER() OVER (PARTITION BY ProjectId ORDER BY Assembled desc) as RowNum from Release) rs
	WHERE RowNum = 1
GO
