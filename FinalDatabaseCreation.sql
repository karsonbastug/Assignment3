

--CREATE DATABASE Asthma;
--GO

USE Asthma;
GO
--drop first
	drop table HealthReview;
--drop second
	drop table LocationWeather;
--drop third
	drop table Location;
--drop fourth
	drop table [User];

--re-create tables as given:

CREATE TABLE Location (
    LID INT PRIMARY KEY NOT NULL,
    City VARCHAR(100),
    [State] VARCHAR(20),
    [Address] VARCHAR(20),
    ZipCode VARCHAR(20)
);

CREATE TABLE LocationWeather (
    LID INT NOT NULL,
    MaxTemp INT,
    MinTemp INT,
    AvgTemp INT,
    Precipitation INT,
    [Date] DATE,
    PRIMARY KEY (LID, [Date]),
    FOREIGN KEY (LID) REFERENCES Location(LID)
);


	CREATE TABLE HealthReview (
    RID INT,
    Rating INT,
    UserComment TEXT,
    LID INT,
    [Date] DATE,
	PRIMARY KEY (RID, LID, [Date]),
    FOREIGN KEY (LID) REFERENCES Location(LID)
);


	


	
