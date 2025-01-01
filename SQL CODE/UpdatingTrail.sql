CREATE PROCEDURE CW1.InsertTrail
	@TrailID INT,
	@TrailName VARCHAR(100),
	@LocationID INT,
	@Length DECIMAL (5,2),
	@DifficultyLevelI INT,
	@StartingPoint VARCHAR(100),
	@EndingPoint VARCHAR(100),
	@EstiamtedTime VARCHAR(50)
AS
BEGIN
	UPDATE dbo.Trails
	SET
		TrailName = @TrailName,
		LocationID = @LocationID,
		Length = @Length,
		DifficultyLevelID = @DifficultyLevelID,
		StartingPoint = @StartingPoint,
		EndingPoint = @EndingPoint,
		EstiamtedTime = @EstiamtedTime 
	WHERE TrailID = @TrailID;
END

