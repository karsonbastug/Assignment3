--drop procedure GetAverageRatingForTemperatureRange
CREATE PROCEDURE GetAverageRatingForTemperatureRange
    @MinTemp INT,
    @MaxTemp INT
AS
BEGIN
    SELECT AVG(CAST(HR.Rating AS FLOAT)) AS Rating, HR.[Date], L.[Address], L.[State]
    FROM HealthReview HR
    JOIN LocationWeather LW ON HR.LID = LW.LID 
    JOIN Location L ON LW.LID = L.LID
    WHERE LW.MinTemp >= @MinTemp AND LW.MaxTemp <= @MaxTemp
    GROUP BY HR.Rating, HR.[Date], L.[Address], L.[State]
	ORDER BY HR.Rating DESC;
END;



--New Procedure
CREATE PROCEDURE InsertReview
    @Rating INT,
    @UserComment VARCHAR(20),
    @City VARCHAR(50)
AS
BEGIN
    DECLARE @NewRID INT;
    SELECT @NewRID = ISNULL(MAX(RID), 0) + 1 FROM HealthReview;
    INSERT INTO HealthReview (RID, Rating, UserComment, LID, [Date])
    SELECT @NewRID, @Rating, @UserComment, Location.LID, GETDATE()
    FROM Location
    INNER JOIN LocationWeather ON Location.LID = LocationWeather.LID
    WHERE Location.City = @City;
	SELECT HealthReview.Rating, HealthReview.UserComment, Location.City
	FROM HealthReview
	INNER JOIN Location ON HealthReview.LID = Location.LID
	WHERE RID=@NewRID;
	
END;



--Ignore
--CREATE PROCEDURE GetRatingForLocations
  --  @LID INT
--AS
--BEGIN
  --  SELECT H.Rating, H.Comment, H.[Date]
    --FROM HealthReview H
    --INNER JOIN LocationWeather LW ON H.LID = LW.LID AND H.WID = LW.WID
    --WHERE LW.LID = 1;
END;

    --EXEC GetRatingForLocations @LID = 1
