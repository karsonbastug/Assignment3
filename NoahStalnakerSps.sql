CREATE PROCEDURE GetAverageRatingForTemperatureRange
    @MinTemp INT,
    @MaxTemp INT
AS
BEGIN
    SELECT AVG(CAST(HR.Rating AS FLOAT)) AS Rating, HR.[Date], L.[Address], L.[State]
    FROM HealthReview HR
    JOIN LocationWeather LW ON HR.LID = LW.LID AND HR.WID = LW.WID
    JOIN Location L ON LW.LID = L.LID
    WHERE LW.MinTemp >= @MinTemp AND LW.MaxTemp <= @MaxTemp
    GROUP BY HR.Rating, HR.[Date], L.[Address], L.[State];
END;

  --EXEC GetRatingsForHighTemp @MaxTemp = 85 @MinTemp=65;



CREATE PROCEDURE GetRatingForLocations
    @LID INT
AS
BEGIN
    SELECT H.Rating, H.Comment, H.[Date]
    FROM HealthReview H
    INNER JOIN LocationWeather LW ON H.LID = LW.LID AND H.WID = LW.WID
    WHERE LW.LID = 1;
END;

    --EXEC GetRatingForLocations @LID 1
