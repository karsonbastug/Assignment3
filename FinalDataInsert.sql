--Use Asthma;
INSERT INTO Location (LID, City, State, Address, ZipCode)
VALUES 
    (1, 'Chicago', 'IL', '123 Main St', '60601'),
    (2, 'New York City', 'NY', '456 Elm St', '10001'),
    (3, 'Philadelphia', 'PA', '789 Oak St', '19103'),
    (4, 'Los Angeles', 'CA', '101 Pine St', '90001'),
    (5, 'Miami', 'FL', '202 Maple St', '33101');

-- LocationWeather table entries
INSERT INTO LocationWeather (LID, MaxTemp, MinTemp, AvgTemp, Precipitation, [Date])
VALUES 
    (1, 50, 40, 45, 0, '2024-03-25'),
    (2, 60, 50, 55, 0, '2024-03-25'),
    (3, 55, 45, 50, 0, '2024-03-25'),
    (4, 70, 60, 65, 0, '2024-03-25'),
    (5, 80, 70, 75, 0, '2024-03-25');


-- HealthReview table entries
INSERT INTO HealthReview (RID, Rating, UserComment, LID, [Date])
VALUES 
    (1, 9, 'Minimal asthma symptoms today.', 1, '2024-04-01'),
    (2, 10, 'No asthma symptoms experienced.', 2, '2024-04-01'),
    (3, 6, 'Asthma symptoms were moderate today.', 3, '2024-04-08'),
    (4, 1, 'Experienced severe asthma symptoms.', 4, '2024-04-07'),
    (5, 7, 'Asthma symptoms were manageable.', 5, '2024-03-25'),
    (6, 6, 'Asthma symptoms were mild today.', 1, '2024-04-06'),
    (7, 5, 'Could feel slight asthma discomfort.', 1, '2024-04-06'),
    (8, 9, 'No asthma issues today.', 2, '2024-04-06'),
    (9, 1, 'Asthma symptoms were unbearable.', 2, '2024-04-06'),
    (10, 4, 'Asthma symptoms slightly aggravated.', 3, '2024-04-05'),
    (11, 6, 'Asthma symptoms were tolerable.', 3, '2024-04-07'),
    (12, 10, 'Breathed easily with no asthma problems.', 4, '2024-03-26'),
    (13, 2, 'Asthma symptoms worsened unexpectedly.', 4, '2024-03-26'),
    (14, 9, 'Enjoyed the beach without asthma interference.', 5, '2024-03-26'),
    (15, 3, 'Found it difficult to breathe due to asthma.', 5, '2024-03-26'),
    (16, 8, 'Asthma symptoms were bothersome but manageable.', 1, '2024-03-27'),
    (17, 5, 'Asthma symptoms were moderate today.', 2, '2024-03-28'),
    (18, 1, 'Experienced severe asthma symptoms.', 3, '2024-03-29'),
    (19, 6, 'Asthma symptoms were mild today.', 4, '2024-03-30'),
    (20, 9, 'No asthma issues today.', 5, '2024-03-31'),
    (21, 4, 'Asthma symptoms slightly aggravated.', 1, '2024-04-01'),
    (22, 7, 'Asthma symptoms were tolerable.', 2, '2024-04-02'),
    (23, 10, 'Breathed easily with no asthma problems.', 3, '2024-04-03'),
    (24, 3, 'Asthma symptoms worsened unexpectedly.', 4, '2024-04-04'),
    (25, 8, 'Enjoyed the beach without asthma interference.', 5, '2024-04-05'),
    (26, 5, 'Found it difficult to breathe due to asthma.', 1, '2024-04-06'),
    (27, 9, 'Minimal asthma symptoms today.', 2, '2024-04-07'),
    (28, 7, 'No asthma symptoms experienced.', 3, '2024-04-08'),
    (29, 2, 'Asthma symptoms were moderate today.', 4, '2024-04-09'),
    (30, 6, 'Experienced severe asthma symptoms.', 5, '2024-04-09');



