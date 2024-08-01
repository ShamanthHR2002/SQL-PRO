CREATE DATABASE company1;
USE company1;


create table players(Player_Name varchar(20) not null unique,Age int not null,State varchar(30) not null,Cap_Number int not null unique, Player_Score int not null);

create table matches(Opponent_team varchar(30)not null,Match_type enum('ODI','T20','TEST'), Match_date date unique, Match_time time not null, Location varchar(30) unique );


INSERT INTO players (Player_Name, Age, State, Cap_Number, Player_Score) VALUES
('Virat Kohli', 35, 'Delhi', 269, 231),
('Rohit Sharma', 37, 'Maharashtra', 188, 243),
('Jasprit Bumrah', 30, 'Gujarat', 298, 107),
('Ravindra Jadeja', 35, 'Gujarat', 204, 114),
('KL Rahul', 32, 'Karnataka', 289, 81),
('Rishabh Pant', 26, 'Uttarakhand', 290, 92),
('Shreyas Iyer', 29, 'Maharashtra', 303, 48),
('Hardik Pandya', 30, 'Gujarat', 292, 54),
('Shikhar Dhawan', 38, 'Delhi', 253, 168),
('Mohammed Shami', 33, 'Uttar Pradesh', 287, 79);


INSERT INTO matches (Opponent_team, Match_type, Match_date, Match_time, Location) VALUES
('Australia', 'TEST', '2024-01-15', '10:00:00', 'Sydney'),
('England', 'ODI', '2024-02-05', '14:00:00', 'London'),
('South Africa', 'T20', '2024-03-10', '19:00:00', 'Cape Town'),
('New Zealand', 'ODI', '2024-04-18', '14:00:00', 'Auckland'),
('Pakistan', 'T20', '2024-05-22', '18:30:00', 'Lahore'),
('Sri Lanka', 'TEST', '2024-06-30', '10:00:00', 'Colombo'),
('West Indies', 'ODI', '2024-07-14', '13:30:00', 'Kingston'),
('Bangladesh', 'T20', '2024-08-25', '18:00:00', 'Dhaka'),
('Afghanistan', 'ODI', '2024-09-15', '13:00:00', 'Kabul'),
('Zimbabwe', 'TEST', '2024-10-10', '10:00:00', 'Harare');

SELECT * FROM matches;
SELECT * FROM players;

SELECT * FROM matches
WHERE Match_date BETWEEN '2024-01-01' AND '2024-06-30';

SELECT * FROM matches
WHERE Opponent_team LIKE '%an%';

SELECT * FROM matches
ORDER BY Opponent_team DESC;

SELECT UPPER(Opponent_team) AS Uppercase_Opponent_team, Match_type, Match_date, Match_time, Location
FROM matches;

SELECT Opponent_team, Match_type, Match_date, Match_time, LOWER(Location) AS Lowercase_Location
FROM matches;

SELECT CONCAT(Opponent_team, ' vs ', Location) AS Match_Info, Match_type, Match_date, Match_time
FROM matches;


CREATE INDEX idx_match_date ON matches (Match_date);

SELECT * FROM matches
WHERE Match_date > '2024-06-01';

SELECT * FROM matches
WHERE Match_date BETWEEN '2024-03-01' AND '2024-09-01';