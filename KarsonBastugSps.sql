
CREATE PROCEDURE GetRatingsForHighTemp
    @MaxTemp INT
AS
BEGIN
    SELECT HR.Rating, HR.[Date], L.[Address], L.[State]
    FROM HealthReview HR
    INNER JOIN LocationWeather LW ON HR.LID = LW.LID AND HR.WID = LW.WID
    INNER JOIN Location L on LW.LID=L.LID
    WHERE LW.MaxTemp > @MaxTemp;
END;

--EXEC GetRatingsForHighTemp @MaxTemp = 80;

CREATE PROCEDURE GetCitiesByRating
    @Rating INT
AS
BEGIN
    SELECT L.City, LW.[Date], HR.Rating
    FROM Location L
    INNER JOIN LocationWeather LW ON L.LID = LW.LID
    INNER JOIN HealthReview HR ON LW.LID = HR.LID AND LW.WID = HR.WID
    WHERE HR.Rating > @Rating;
END;

--EXEC GetCitiesByRating @Rating = 2;
