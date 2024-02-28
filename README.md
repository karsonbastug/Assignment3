# 1. Company Plan: Merging Ideas #

Three multibillion-dollar ideas came together to form the perfect website: Rate My Asthma. Utilizing Noah’s idea for focusing in on asthma, Karson’s UI, and Chases funcitonality, this beautiful website will allow users to select any location, and rate on a scale 1-10 how badly their asthma was affected in that location due to the weather (1 being horribly affected, 10 being not at all). From there, they can even review locations and their weather to know ahead of time before making trips. By allowing users to rate their own experiences, this information can be used by people to make informed decisions before going out into the world to face the weather. 

# 2. Six Stored Procedures For This Brilliant Idea #

## Karson ##
Select ratings for a certain temp or precipitation level 
- Description: Retrieves the ratings  for certain temperatures, such as reviews when the temp high for any day was higher than 80

Get cities with ratings higher than a certain amount and the date rated
- Desciption: Retrieves cities and the respective weather conditions when ratings were > x 

 

## Noah ##
Show average rating when temperatures are at a certain level 
- Description: Average rating across all reviews for certain temperatures 

Get all ratings for a location-by-location ID 
- Retrieves ratings for a specific location 

 

## Chase ##

Add attribute to locationWeather (wind mph, temp, etc) 
- Description: Add an attribute to locationWeather, used for the client side incase a new metric needs to be considered
  
Show reviews during a certain season for a certain state 
- Desciprition: Shows the asthma rating for different seasons in specific states 
