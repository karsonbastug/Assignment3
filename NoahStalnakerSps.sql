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

  
  --EXEC GetRatingsForHighTemp @MaxTemp = 80 @MinTemp=40
