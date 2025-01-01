-- insert sample data into locations table
INSERT INTO Locations (LocationID, LocationName)
VALUES
	(1, 'Plymouth WaterFront'),
	(2, 'Plymbridge Circular');

-- insert sample data into DifficultyLevels table
INSERT INTO DifficultyLevels (DifficultyLevelID, DifficultyLevelName)
VALUES
	(1, 'Easy'),
	(2, 'Moderate');

-- insert sample data into Trails Table (without Mapurl)
INSERT INTO Trails (TrailID, TrailName, LocationID, Length, DifficutlyLevelID, StartingPoint, EndingPoint, EstimatedTime)
VALUES
	(1, 'Plymouth WaterFront Trail, 1,5.5,1, 'Point A', 'Point B', '2 Hours'),
	(2, 'Plymbridge Circular Trail', 2,10.0,2,'Point C', 'Point D', '3.5 Hours);

-- insert sample data into Activities Table
INSERT INTO Activities (ActivityID, ActivityName)
VALUES
	(1,'Hiking')
	(2,'Cycling')
	(3,'Bird Watching')

-- insert sample data into  TrailActivities Table (Link Entity)
INSERT INTO TrialActivities (TrailActivityID,TrailID, ActivityID)
VALUES
	(1,1,1), -- Hiking on Plymouth Waterfront Trail
	(2,1,3), -- Bird Watching on Plymouth Waterfront Trail
	(3,2,2); -- Cycling on Plymbridge Circular Trail