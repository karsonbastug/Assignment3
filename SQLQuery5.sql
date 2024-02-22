CREATE PROCEDURE GetRatingsForHighTemp
    @MaxTemp INT
AS
BEGIN
    SELECT WH.Rating
    FROM WeatherHealth WH
    JOIN LocationWeather LW ON WH.LID = LW.LID AND WH.WID = LW.WID
    WHERE LW.MaxTemp > @MaxTemp;
END;

EXEC GetRatingsForHighTemp @MaxTemp = 80;

CREATE PROCEDURE GetCitiesByRating
    @Rating INT
AS
BEGIN
    SELECT L.City, LW.MaxTemp, LW.MinTemp, LW.AvgTemp, LW.Precipitation
    FROM Location L
    JOIN LocationWeather LW ON L.LID = LW.LID
    JOIN WeatherHealth WH ON LW.LID = WH.LID AND LW.WID = WH.WID
    WHERE WH.Rating > @Rating;
END;

EXEC GetCitiesByRating @Rating = 2;

