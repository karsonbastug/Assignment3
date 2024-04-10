
INSERT INTO [User] ([UID], Username, [Password], Email) VALUES
(1, 'alice_smith', 'pass123', 'alice.smith@example.com'),
(2, 'bob_jones', 'bobpass', 'bob.jones@example.com'),
(3, 'emma_jackson', 'emma123', 'emma.jackson@example.com'),
(4, 'michael_adams', 'mikepass', 'michael.adams@example.com'),
(5, 'sophia_wilson', 'sophia456', 'sophia.wilson@example.com'),
(6, 'john_doe', 'john123', 'john.doe@example.com'),
(7, 'jane_smith', 'jane456', 'jane.smith@example.com'),
(8, 'alex_wilson', 'alexpass', 'alex.wilson@example.com'),
(9, 'sara_jones', 'sara789', 'sara.jones@example.com'),
(10, 'kevin_anderson', 'kevinpass', 'kevin.anderson@example.com'),
(11, 'olivia_brown', 'olivia123', 'olivia.brown@example.com'),
(12, 'william_taylor', 'williampass', 'william.taylor@example.com'),
(13, 'emily_miller', 'emilypass', 'emily.miller@example.com'),
(14, 'daniel_johnson', 'danielpass', 'daniel.johnson@example.com'),
(15, 'ava_garcia', 'avapass', 'ava.garcia@example.com'),
(16, 'james_rodriguez', 'jamespass', 'james.rodriguez@example.com'),
(17, 'mia_martinez', 'miapass', 'mia.martinez@example.com'),
(18, 'ethan_hernandez', 'ethanpass', 'ethan.hernandez@example.com'),
(19, 'isabella_lopez', 'isabellapass', 'isabella.lopez@example.com'),
(20, 'aiden_gonzalez', 'aidenpass', 'aiden.gonzalez@example.com'),
(21, 'oliver_perez', 'oliverpass', 'oliver.perez@example.com'),
(22, 'amelia_sanchez', 'ameliapass', 'amelia.sanchez@example.com'),
(23, 'benjamin_rivera', 'benjaminpass', 'benjamin.rivera@example.com'),
(24, 'chloe_lee', 'chloepass', 'chloe.lee@example.com'),
(25, 'lucas_wood', 'lucaspass', 'lucas.wood@example.com'),
(26, 'madison_morris', 'madisonpass', 'madison.morris@example.com'),
(27, 'mason_nguyen', 'masonpass', 'mason.nguyen@example.com'),
(28, 'harper_kim', 'harperpass', 'harper.kim@example.com'),
(29, 'evelyn_tran', 'evelynpass', 'evelyn.tran@example.com'),
(30, 'jackson_ng', 'jacksonpass', 'jackson.ng@example.com');

INSERT INTO Location (LID, City, [State], ZipCode, [Address]) VALUES
(1, 'Chicago', 'IL', '60601', '123 Main St'),
(2, 'Houston', 'TX', '77002', '456 Elm St'),
(3, 'Miami', 'FL', '33101', '789 Ocean Ave'),
(4, 'Seattle', 'WA', '98101', '101 Pine St'),
(5, 'Denver', 'CO', '80202', '555 Broadway St'),
(6, 'New York', 'NY', '10001', '123 Main St'),
(7, 'Los Angeles', 'CA', '90001', '456 Elm St'),
(8, 'Chicago', 'IL', '60601', '789 Oak St'),
(9, 'Houston', 'TX', '77001', '101 Maple St'),
(10, 'Phoenix', 'AZ', '85001', '555 Cedar St'),
(11, 'San Francisco', 'CA', '94101', '123 Market St'),
(12, 'Boston', 'MA', '02101', '456 Chestnut St'),
(13, 'Atlanta', 'GA', '30301', '789 Peachtree St'),
(14, 'Dallas', 'TX', '75201', '101 Elm St'),
(15, 'Philadelphia', 'PA', '19101', '555 Walnut St'),
(16, 'Miami', 'FL', '33101', '123 Ocean Dr'),
(17, 'Seattle', 'WA', '98101', '456 Pine St'),
(18, 'Denver', 'CO', '80202', '789 Broadway St'),
(19, 'Las Vegas', 'NV', '89101', '101 Casino Ave'),
(20, 'Orlando', 'FL', '32801', '555 Disney Ln'),
(21, 'Portland', 'OR', '97201', '123 Forest St'),
(22, 'Austin', 'TX', '78701', '456 River Rd'),
(23, 'San Diego', 'CA', '92101', '789 Beach Blvd'),
(24, 'Nashville', 'TN', '37201', '101 Music Row'),
(25, 'Detroit', 'MI', '48201', '555 Motor Ave');

INSERT INTO LocationWeather (LID, WID, MaxTemp, MinTemp, AvgTemp, Precipitation, [Date]) VALUES
(1, 100, 75, 55, 65, 0, '2024-1-10'),
(2, 101, 80, 60, 70, 0, '2024-2-04'),
(3, 102, 85, 65, 75, 10, '2023-08-19'),
(4, 103, 70, 50, 60, 5, '2023-09-20'),
(5, 104, 60, 40, 50, 8, '2023-10-19'),
(6, 105, 75, 55, 65, 15, '2023-11-19'),
(7, 106, 80, 60, 70, 5, '2023-12-20'),
(8, 107, 45, 25, 35, 20, '2024-01-19'),
(9, 108, 65, 45, 55, 10, '2024-02-18'),
(10, 109, 85, 65, 75, 5, '2024-03-21'),
(11, 110, 70, 50, 60, 10, '2023-04-19'),
(12, 111, 60, 40, 50, 8, '2023-05-20'),
(13, 112, 55, 35, 45, 12, '2023-06-19'),
(14, 113, 80, 60, 70, 6, '2023-07-18'),
(15, 114, 75, 55, 65, 10, '2023-08-21'),
(16, 115, 90, 70, 80, 5, '2023-09-20'),
(17, 116, 65, 45, 55, 15, '2023-10-19'),
(18, 117, 50, 30, 40, 18, '2023-11-20'),
(19, 118, 75, 55, 65, 8, '2023-12-19'),
(20, 119, 70, 50, 60, 12, '2023-01-18'),
(21, 120, 85, 65, 75, 7, '2023-02-21'),
(22, 121, 60, 40, 50, 20, '2023-03-20'),
(23, 122, 55, 35, 45, 15, '2023-04-19'),

INSERT INTO HealthReview ([UID], LID, WID, Rating, Comment, [Date]) VALUES
(6, 6, 105, 4, 'Enjoyed the city vibe!', '2023-11-19'),
(7, 7, 106, 8, 'Perfect weather for outdoor activities.', '2023-12-20'),
(8, 8, 107, 2, 'Too cold for my liking.', '2024-01-19'),
(9, 9, 108, 7, 'Nice and mild, great for exploring.', '2024-02-18'),
(10, 10, 109, 9, 'Absolutely beautiful weather!', '2024-04-04'),
(11, 11, 110, 6, 'A bit chilly but manageable.', '2024-04-11'),
(12, 12, 111, 7, 'Lovely weather, perfect for a stroll.', '2024-04-04'),
(13, 13, 112, 5, 'Slightly cool, but enjoyable overall.', '2024-04-03'),
(14, 14, 113, 8, 'Great weather for outdoor activities.', '2024-04-02'),
(15, 15, 114, 6, 'Pleasant temperature, slight breeze.', '2024-04-04'),
(16, 16, 115, 9, 'Warm and sunny, perfect beach day!', '2024-04-04'),
(17, 17, 116, 5, 'Bit rainy, but still had fun.', '2024-04-11'),
(18, 18, 117, 3, 'Cold and rainy, not ideal.', '2024-04-04'),
(19, 19, 118, 7, 'Nice weather, good for sightseeing.', '2024-04-04'),
(20, 20, 119, 8, 'Enjoyed the pleasant weather.', '2024-04-04'),
(21, 21, 120, 9, 'Perfect temperature, sunny skies.', '2024-04-04'),
(22, 22, 121, 4, 'Too much rain, couldn't do much outdoors.', '2024-04-04'),
(23, 23, 122, 5, 'Cool weather, could use a jacket.', '2024-04-04'),
(24, 6, 105, 7, 'Warm weather, great for outdoor activities.', '2024-04-04'),
(25, 7, 106, 8, 'Sunny and warm, perfect day for a picnic.', '2024-04-04');




















