
INSERT INTO [User] (UID, Username, Password, Email) VALUES
(3, 'alice_smith', 'pass123', 'alice.smith@example.com'),
(4, 'bob_jones', 'bobpass', 'bob.jones@example.com');

INSERT INTO Location (LID, City, State, ZipCode, Address) VALUES
(3, 'Chicago', 'IL', '60601', '123 Main St'),
(4, 'Houston', 'TX', '77002', '456 Elm St');

INSERT INTO LocationWeather (LID, WID, MaxTemp, MinTemp, AvgTemp, Precipitation) VALUES
(3, 103, 75, 55, 65, 0),
(4, 104, 80, 60, 70, 0);

INSERT INTO HealthReview (UID, LID, WID, Rating, Comment, Date) VALUES
(3, 3, 103, 7, 'Beautiful weather in Chicago today, asthma was not bad', '2024-1-10'),
(4, 4, 104, 3, 'Sunny day, pretty hot midday, breathing got difficult', '2024-2-04');

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

INSERT INTO HealthReview (UID, LID, WID, Rating, Comment, Date) VALUES
(5, 5, 105, 3, 'this place is hell', '2023-08-19'),
(6, 6, 106, 6, 'was nice out', '2023-09-20'),
(7, 7, 107, 8, 'make sure to pack something warm!', '2023-10-19');


