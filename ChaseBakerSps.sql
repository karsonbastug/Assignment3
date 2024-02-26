-- This is the Alpha Male's Territory, do you have permission to be here?

--This one took forever to figure out
--You input table, attribute name, and attribute type, then it gets added to that table. 
--This is objectively worse than the ALTER TABLE option, this is just a round about waty to do it.
--I recommend dropping this one and finding a new one maybe, for this reason I made a third / modified sp
CREATE PROCEDURE addAttrToTable
	@Table varchar(30),
	@NewAttr varchar(30),
	@NewAttrDataType varchar(30)

	AS 
	BEGIN
		DECLARE @stmt varchar(1000)
		SET @stmt = 'ALTER TABLE '  + @Table  + ' ' + 'ADD '+ @NewAttr + ' ' + @NewAttrDataType
	
		EXECUTE (@stmt);
		

		END;
		GO

			
--I NEED A RAISE
--You input city and season, outputs avg rating during that season in that city
CREATE PROC avgRatePerSeasonInCity
@City varchar(100),
@Season varchar(100)

AS 
BEGIN

SELECT (CASE WHEN MONTH(date) IN (12, 1, 2) THEN 'winter'
		WHEN MONTH(date) IN (3, 4, 5) THEN 'spring'
		WHEN MONTH(date) IN (6, 7, 8) THEN 'summer'
		WHEN MONTH(date) IN (9, 10, 11) THEN 'fall'
	END) as season,
	AVG(Rating) AS "Average Rating"
FROM HealthReview 
INNER JOIN Location ON HealthReview.LID = Location.LID
WHERE City = @City
GROUP BY (CASE WHEN MONTH(date) IN (12, 1, 2) THEN 'winter'
	       WHEN MONTH(date) IN (3, 4, 5) THEN 'spring'
	       WHEN MONTH(date) IN (6, 7, 8) THEN 'summer'
	       WHEN MONTH(date) IN (9, 10, 11) THEN 'fall'
	   END) 
HAVING (CASE WHEN MONTH(date) IN (12, 1, 2) THEN 'winter'
	     WHEN MONTH(date) IN (3, 4, 5) THEN 'spring'
	     WHEN MONTH(date) IN (6, 7, 8) THEN 'summer'
	     WHEN MONTH(date) IN (9, 10, 11) THEN 'fall'
	END) = LOWER(@Season);
END;
GO


--Modified Version of previous that just gives average of Rating in every season for every city	
CREATE PROC avgRatingPerSeason


AS 
BEGIN

SELECT (CASE WHEN MONTH(date) IN (12, 1, 2) THEN 'winter'
			 WHEN MONTH(date) IN (3, 4, 5)	THEN 'spring'
			 WHEN MONTH(date) IN (6, 7, 8)	THEN 'summer'
			 WHEN MONTH(date) IN (9, 10, 11) THEN 'fall'
		END) as season,
		AVG(Rating) AS "Average Rating"
		FROM HealthReview 
		INNER JOIN Location ON HealthReview.LID = Location.LID
		
GROUP BY (CASE WHEN MONTH(date) IN (12, 1, 2) THEN 'winter'
			 WHEN MONTH(date) IN (3, 4, 5)	THEN 'spring'
			 WHEN MONTH(date) IN (6, 7, 8)	THEN 'summer'
			 WHEN MONTH(date) IN (9, 10, 11) THEN 'fall'
		END) 
		END;
		GO


		
