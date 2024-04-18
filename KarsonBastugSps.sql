
--drop procedure GetRatingsForHighTemp
CREATE PROCEDURE GetRatingsForHighTemp
    @MaxTemp INT
AS
BEGIN
    SELECT L.City, LW.MaxTemp, HR.Rating, HR.UserComment, HR.[Date]
    FROM HealthReview HR
    INNER JOIN LocationWeather LW ON HR.LID = LW.LID
    INNER JOIN Location L on LW.LID=L.LID
    WHERE LW.MaxTemp > @MaxTemp;
END;




--drop procedure GetCity1
CREATE PROCEDURE GetCity1
    @Location varchar(20)
AS
BEGIN
    DECLARE @CurrentDate DATE
    SET @CurrentDate = GETDATE() 
    
    SELECT HR.[Date], HR.Rating, LW.MaxTemp, LW.MinTemp, LW.AvgTemp, L.City, HR.UserComment
    FROM Location L
    INNER JOIN LocationWeather LW ON L.LID = LW.LID
    INNER JOIN HealthReview HR ON LW.LID = HR.LID AND LW.LID = HR.LID
    WHERE L.City = @Location
        AND HR.[Date] <= @CurrentDate 
END;



--New Procedure

CREATE PROCEDURE GetCity2
    @Location varchar(20)
AS
BEGIN
    DECLARE @PastWeekDate DATE
    SET @PastWeekDate = DATEADD(DAY, -7, GETDATE())
    
    SELECT HR.[Date], HR.Rating, LW.MaxTemp, LW.MinTemp, LW.AvgTemp, L.City, HR.Comment
    FROM Location L
    INNER JOIN LocationWeather LW ON L.LID = LW.LID
    INNER JOIN HealthReview HR ON LW.LID = HR.LID AND LW.LID = HR.LID
    WHERE L.City = @Location
        AND HR.[Date] < @PastWeekDate 
END;


