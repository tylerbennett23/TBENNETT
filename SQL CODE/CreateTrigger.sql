CREATE TRIGGER CW1.LogTrailAddition
ON CW1.Trails
AFTER INSERT 
AS
BEGIN
	DECLARE @TrailID INT;
	DECLARE @AddedBy VARCHAR(100);

	SELECT @TrailID = TrailID FROM inserted;
	SET @AddedBy = SYSTEM_USER; -- Capturing the user who made the addition

	INSERT INTO CW1.TrailAdditionLog (TrailID, AddedBy)
	VALUES (@TrailID, @AddedBy);
END;