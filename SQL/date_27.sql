CREATE DATABASE DATE_27;
USE DATE_27;
CREATE TABLE hospital (
    hospital_id INT PRIMARY KEY,hospital_name VARCHAR(100) UNIQUE,location VARCHAR(100),
    established_year INT CHECK (established_year >= 1900 AND established_year <= 2024),
    bed INT
);


INSERT INTO hospital (hospital_id, hospital_name, location, established_year, bed)
VALUES
(1, 'Govt Hospital', 'Marathahalli', 1900, 100), -- 
(2, 'Shankar hospital', 'Basavanagudi', 2000, 200),
(3, 'Sakra hospital', 'Sarjapur', 1988, 470),
(4, 'Jayadeva hospital', 'Jayanagar', 1992, 600),
(5, 'Apolo Hospital', 'Udupi', 1987, 250);


CREATE TABLE colleges (
    college_id INT PRIMARY KEY,college_name VARCHAR(100) UNIQUE,city VARCHAR(100),
    established_year INT CHECK (established_year >= 1850 AND established_year <= 2024),
    branch INT
);


INSERT INTO colleges (college_id, college_name, city, established_year, branch)
VALUES
(1, 'New Horizon College of Engineering', 'Marathahalli', 1992, 6),
(2, 'SDM IT', 'Ujire', 1966, 5),
(3, 'R.V. College of Engineering', 'Bangalore', 1963, 9),
(4, 'NMIT', 'Nitte', 1989, 5),
(5, 'Maharaja College of Engineering', 'Mysore', 1963, 8);


ALTER TABLE hospital
ADD CONSTRAINT chk_bed CHECK (bed >= 0);


ALTER TABLE hospital
DROP CONSTRAINT chk_bed;


ALTER TABLE colleges
ADD CONSTRAINT chk_branch CHECK (branch >= 0);


ALTER TABLE colleges
DROP CONSTRAINT chk_branch;
