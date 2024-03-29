CREATE DATABASE Asthma;
GO

USE Asthma;
GO

CREATE TABLE [User] (
    [UID] INT PRIMARY KEY NOT NULL,
    Username VARCHAR(50) NOT NULL,
    [Password] VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL
);

CREATE TABLE Location (
    LID INT PRIMARY KEY NOT NULL,
    City VARCHAR(100),
    [State] VARCHAR(20),
    [Address] VARCHAR(20),
    ZipCode VARCHAR(20)
);

CREATE TABLE LocationWeather (
    LID INT NOT NULL,
    WID INT NOT NULL,
    MaxTemp INT,
    MinTemp INT,
    AvgTemp INT,
    Precipitation INT,
    [Date] DATE,
    PRIMARY KEY (LID, WID),
    FOREIGN KEY (LID) REFERENCES Location(LID)
);

CREATE TABLE HealthReview (
    [UID] INT NOT NULL,
    LID INT NOT NULL,
    WID INT NOT NULL,
    Rating INT,
    Comment TEXT,
    [Date] DATE,
    PRIMARY KEY (UID, LID, WID),
    FOREIGN KEY (UID) REFERENCES [User](UID),
    FOREIGN KEY (LID, WID) REFERENCES LocationWeather(LID, WID)
);
