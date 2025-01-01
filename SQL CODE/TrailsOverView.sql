CREATE VIEW CW1.TrailsOverview AS
SELECT 
	T.TrailID,
	T.TrailName,
	L.LocationName,
	D.DifficultyLevelName,
	T.Length,
	T.StartingPoint,
	T.EndingPoint,
	T.EstimatedTime
FROM
	Trails T
JOIN
	Locations L ON T.LocationID = L.LocationID
JOIN
	DifficultyLevels D ON T.DifficultyLevelID - D.DifficultyLevelID;
