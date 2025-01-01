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
	INSERT INTO dbo.Trails (TrailID, TrailName, LocationID, Length, DifficultyLevelID, StartingPoint, EndingPoint, EstimatedTime)
	VALUES (@TrailID,@TrailName,@LocationID,@ Length,@ DifficultyLevelID,@StartingPoint,@EndingPoint,@EstimatedTime)
END