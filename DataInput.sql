
INSERT INTO [User] (UID, Username, Password, Email) VALUES
(1, 'alice_smith', 'pass123', 'alice.smith@example.com'),
(2, 'bob_jones', 'bobpass', 'bob.jones@example.com');

INSERT INTO Location (LID, City, State, ZipCode, Address) VALUES
(1, 'Chicago', 'IL', '60601', '123 Main St'),
(2, 'Houston', 'TX', '77002', '456 Elm St');

INSERT INTO LocationWeather (LID, WID, MaxTemp, MinTemp, AvgTemp, Precipitation) VALUES
(1, 100, 75, 55, 65, 0),
(2, 101, 80, 60, 70, 0);

INSERT INTO HealthReview (UID, LID, WID, Rating, Comment, Date) VALUES
(1, 1, 100, 7, 'Beautiful weather in Chicago today, asthma was not bad', '2024-1-10'),
(2, 2, 101, 3, 'Sunny day, pretty hot midday, breathing got difficult', '2024-2-04');

<------------------>

INSERT INTO [User] (UID, Username, Password, Email) VALUES
(3, 'emma_jackson', 'emma123', 'emma.jackson@example.com'),
(4, 'michael_adams', 'mikepass', 'michael.adams@example.com'),
(5, 'sophia_wilson', 'sophia456', 'sophia.wilson@example.com');

INSERT INTO Location (LID, City, State, ZipCode, Address) VALUES
(3, 'Miami', 'FL', '33101', '789 Ocean Ave'),
(4, 'Seattle', 'WA', '98101', '101 Pine St'),
(5, 'Denver', 'CO', '80202', '555 Broadway St');

INSERT INTO LocationWeather (LID, WID, MaxTemp, MinTemp, AvgTemp, Precipitation) VALUES
(3, 102, 85, 65, 75, 10),
(4, 103, 70, 50, 60, 5),
(5, 104, 60, 40, 50, 8);

INSERT INTO HealthReview (UID, LID, WID, Rating, Comment, Date) VALUES
(3, 3, 102, 3, 'this place is hell', '2023-08-19'),
(4, 4, 103, 6, 'was nice out', '2023-09-20'),
(5, 5, 104, 8, 'make sure to pack something warm!', '2023-10-19');


