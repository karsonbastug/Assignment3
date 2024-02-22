ALTER TABLE LocationWeather
ADD MaxTemp INT NOT NULL,
    MinTemp INT NOT NULL,
    AvgTemp INT NOT NULL,
    Precipitation INT NOT NULL;

ALTER TABLE Location
ADD Address VARCHAR(255) NOT NULL;

INSERT INTO [User] (UID, Username, Password, Email) VALUES
(3, 'alice_smith', 'pass123', 'alice.smith@example.com'),
(4, 'bob_jones', 'bobpass', 'bob.jones@example.com');

INSERT INTO Location (LID, City, State, ZipCode, Address) VALUES
(3, 'Chicago', 'IL', '60601', '123 Main St'),
(4, 'Houston', 'TX', '77002', '456 Elm St');

INSERT INTO LocationWeather (LID, WID, MaxTemp, MinTemp, AvgTemp, Precipitation) VALUES
(3, 103, 75, 55, 65, 0),
(4, 104, 80, 60, 70, 0);

INSERT INTO WeatherHealth (UID, LID, WID, Rating, Comment) VALUES
(3, 3, 103, 5, 'Beautiful weather in Chicago today'),
(4, 4, 104, 4, 'Sunny day in Houston, perfect for outdoor activities');

<------------------>

INSERT INTO [User] (UID, Username, Password, Email) VALUES
(5, 'emma_jackson', 'emma123', 'emma.jackson@example.com'),
(6, 'michael_adams', 'mikepass', 'michael.adams@example.com'),
(7, 'sophia_wilson', 'sophia456', 'sophia.wilson@example.com');

INSERT INTO Location (LID, City, State, ZipCode, Address) VALUES
(5, 'Miami', 'FL', '33101', '789 Ocean Ave'),
(6, 'Seattle', 'WA', '98101', '101 Pine St'),
(7, 'Denver', 'CO', '80202', '555 Broadway St');

INSERT INTO LocationWeather (LID, WID, MaxTemp, MinTemp, AvgTemp, Precipitation) VALUES
(5, 105, 85, 65, 75, 10),
(6, 106, 70, 50, 60, 5),
(7, 107, 60, 40, 50, 8);

INSERT INTO WeatherHealth (UID, LID, WID, Rating, Comment) VALUES
(5, 5, 105, 3, 'this place is hell'),
(6, 6, 106, 6, 'was nice out'),
(7, 7, 107, 8, 'make sure to pack something warm!');

SELECT * from WeatherHealth