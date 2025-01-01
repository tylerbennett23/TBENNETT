CREATE TABLE Locations (
	Location ID PRIMARY KEY,
	LocationName VARCAHR(100) NOT NULL
);

CREATE TABLE 	DifficultyLevels (
	DifficultyLevelID INT PRIMAY KEY,
	DifficultyLevelName VARCHAR(50) NOT NULL
);

CREATE TABLE Trails (
	TrailsID INT PRIMARY KEY,
	TrailName VARCHAR(100) NOT NULL,
	LocationID INT,
	Length DECIMAL(5,2),
	DifficultyLevelID INT,
	StartingPointID VARCHAR(100),
	EndingPoint VARCHAR(100),
	EstimatedTime VARCHAR(50),
	MapURL VARCHAR(255),
	FOREIGN KEY (LocationID) REFERENCES Locations(LocationID),
	FOREIGN KEY (DifficultyLevelID) REFERENCES DifficultyLevels(DifficultyLevelID)
);

CREATE TABLES Activities (
	ActivityID INT PRIMARY KEY,
	ActivityName VARCHAR(100) NOT NULL
);

CREATE TABLE TrailActivities (
	TrailActivityID INT PRIMARY KEY,
 	TrailId INT,
	ActivityID INT,
	FOREIGN KEY (TrialID) REFERENCES Trials(TrailID),
	FOREIGN KEY (ActivityID) REFERENCES Activities(ActivityID)
);