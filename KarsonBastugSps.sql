
--drop procedure GetRatingsForHighTemp
CREATE PROCEDURE GetRatingsForHighTemp
    @MaxTemp INT
AS
BEGIN
    SELECT HR.Rating, HR.[Date], HR.Comment, LW.MaxTemp
    FROM HealthReview HR
    INNER JOIN LocationWeather LW ON HR.LID = LW.LID AND HR.WID = LW.WID
    INNER JOIN Location L on LW.LID=L.LID
    WHERE LW.MaxTemp > @MaxTemp;
END;

--EXEC GetRatingsForHighTemp @MaxTemp = 80;

CREATE PROCEDURE GetCity1
    @Location varchar(20)
AS
BEGIN
    SELECT HR.[Date], HR.Rating, LW.MaxTemp, LW.MinTemp, LW.AvgTemp, L.City, HR.Comment
    FROM Location L
    INNER JOIN LocationWeather LW ON L.LID = LW.LID
    INNER JOIN HealthReview HR ON LW.LID = HR.LID AND LW.WID = HR.WID
    WHERE L.City = @Location
END;


--drop procedure GetCity1


--Unused 

CREATE PROCEDURE GetCitiesByRatingAndDateRated
    @Rating INT
AS
BEGIN
    SELECT L.City, HR.[Date], HR.Rating
    FROM Location L
    INNER JOIN LocationWeather LW ON L.LID = LW.LID
    INNER JOIN HealthReview HR ON LW.LID = HR.LID AND LW.WID = HR.WID
    WHERE HR.Rating > @Rating
END;

--EXEC GetCitiesByRatingAndDateRated @Rating = 3
