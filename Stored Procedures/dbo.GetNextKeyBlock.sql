SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[GetNextKeyBlock] 
(
	@collectionName nvarchar(50),
	@blockSize int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @result int
	
	UPDATE KeyAllocation
		SET @result = Allocated = (Allocated + @blockSize)
		WHERE CollectionName = @collectionName
	
	if (@@ROWCOUNT = 0)
	begin
		INSERT INTO KeyAllocation (CollectionName, Allocated) values (@collectionName, @blockSize)
		SELECT @blockSize
	end

	SELECT @result
END
GO
