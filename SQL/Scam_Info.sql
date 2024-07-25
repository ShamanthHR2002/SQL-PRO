CREATE DATABASE Scam_Info;
USE Scam_Info;

CREATE TABLE State_Info (
    state_id INT PRIMARY KEY,
    name VARCHAR(50),
    pop INT,
    state_area FLOAT,
    state_capital VARCHAR(50),
    state_governor VARCHAR(50),
    established_date DATE,
    gdp DECIMAL(15,2),
    timezone CHAR(10),
    official_language VARCHAR(50)
);

CREATE TABLE Scam_Info (
    scam_id INT PRIMARY KEY,
    scam_name VARCHAR(50),
    scam_type VARCHAR(50),
    report_date DATE,
    loss_amount DECIMAL(15,2),
    victims_count BIGINT,
    scam_perpetrator VARCHAR(50),
    status VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(50)
);

ALTER TABLE State_Info
ADD COLUMN state_code CHAR(2),
ADD COLUMN population_density FLOAT,
ADD COLUMN economic_index FLOAT,
ADD COLUMN major_industries VARCHAR(100),
ADD COLUMN region_area FLOAT;

ALTER TABLE Scam_Info
ADD COLUMN report_source VARCHAR(50),
ADD COLUMN scam_duration INT,
ADD COLUMN scam_impact VARCHAR(100),
ADD COLUMN victim_demographics VARCHAR(100),
ADD COLUMN recovery_status VARCHAR(50);

ALTER TABLE State_Info
RENAME COLUMN state_area TO area_in_sq_km,
RENAME COLUMN state_capital TO capital_city,
RENAME COLUMN state_governor TO governor_name,
RENAME COLUMN established_date TO date_established,
RENAME COLUMN gdp TO state_gdp;

ALTER TABLE Scam_Info
RENAME COLUMN scam_name TO name_of_scam,
RENAME COLUMN scam_type TO type_of_scam,
RENAME COLUMN report_date TO date_reported,
RENAME COLUMN loss_amount TO amount_lost,
RENAME COLUMN victims_count TO number_of_victims;

ALTER TABLE State_Info
MODIFY COLUMN pop BIGINT,
MODIFY COLUMN area_in_sq_km DECIMAL(15,2),
MODIFY COLUMN state_gdp DECIMAL(20,2),
MODIFY COLUMN population_density DECIMAL(10,2),
MODIFY COLUMN region_area DECIMAL(15,2);

ALTER TABLE Scam_Info
MODIFY COLUMN amount_lost DECIMAL(20,2),
MODIFY COLUMN number_of_victims BIGINT,
MODIFY COLUMN scam_duration SMALLINT,
MODIFY COLUMN report_source VARCHAR(100),
MODIFY COLUMN scam_impact TEXT;

INSERT INTO State_Info (state_id, name, pop, area_in_sq_km, capital_city, governor_name, date_established, state_gdp, timezone, official_language, state_code, population_density, economic_index, major_industries)
VALUES
(1, 'Maharashtra', 112374333, 307713, 'Mumbai', 'Bhagat Singh Koshyari', '1960-05-01', 3500000000000.00, 'IST', 'Marathi', 'MH', 365.25, 1.2, 'IT, Agriculture, Manufacturing'),
(2, 'Uttar Pradesh', 199812341, 243286, 'Lucknow', 'Anandiben Patel', '1950-01-26', 2000000000000.00, 'IST', 'Hindi', 'UP', 821.20, 0.9, 'Agriculture, Textiles, Manufacturing'),
(3, 'Bihar', 104099452, 94163, 'Patna', 'Rajendra Arlekar', '1950-01-26', 1500000000000.00, 'IST', 'Hindi', 'BR', 1100.45, 0.8, 'Agriculture, Handicrafts'),
(4, 'West Bengal', 91276115, 88752, 'Kolkata', 'C.V. Ananda Bose', '1950-01-26', 3000000000000.00, 'IST', 'Bengali', 'WB', 1028.98, 1.1, 'IT, Textiles, Jute'),
(5, 'Rajasthan', 68548437, 342239, 'Jaipur', 'Kalraj Mishra', '1950-01-26', 2500000000000.00, 'IST', 'Hindi', 'RJ', 200.00, 0.7, 'Tourism, Mining, Agriculture'),
(6, 'Gujarat', 60439692, 196024, 'Gandhinagar', 'Acharya Devvrat', '1960-05-01', 3500000000000.00, 'IST', 'Gujarati', 'GJ', 308.76, 1.3, 'Industries, Agriculture, Tourism'),
(7, 'Tamil Nadu', 72147030, 130058, 'Chennai', 'R.N. Ravi', '1950-01-26', 3000000000000.00, 'IST', 'Tamil', 'TN', 554.92, 1.0, 'IT, Textiles, Tourism'),
(8, 'Karnataka', 61095297, 191791, 'Bangalore', 'Thaawarchand Gehlot', '1950-01-26', 2800000000000.00, 'IST', 'Kannada', 'KA', 318.90, 1.1, 'IT, Aerospace, Agriculture'),
(9, 'Andhra Pradesh', 49386799, 162968, 'Amaravati', 'S. Abdul Nazeer', '1950-01-26', 2200000000000.00, 'IST', 'Telugu', 'AP', 303.20, 0.9, 'Agriculture, IT, Tourism'),
(10, 'Punjab', 27704236, 50362, 'Chandigarh', 'Banwarilal Purohit', '1950-01-26', 1600000000000.00, 'IST', 'Punjabi', 'PB', 550.80, 0.8, 'Agriculture, Manufacturing, Tourism');

INSERT INTO Scam_Info (scam_id, name_of_scam, type_of_scam, date_reported, amount_lost, number_of_victims, scam_perpetrator, status, country, city, report_source, scam_duration, scam_impact, victim_demographics, recovery_status)
VALUES
(1, 'Ponzi Scheme', 'Financial', '2024-01-15', 50000000.00, 200, 'Ravi Kumar', 'Under Investigation', 'India', 'Mumbai', 'Economic Times', 12, 'High', 'Low Income', 'Partial Recovery'),
(2, 'Phishing Attack', 'Cyber', '2024-02-20', 10000000.00, 50, 'Tech Group', 'Resolved', 'India', 'Delhi', 'NDTV', 6, 'Medium', 'Middle Income', 'Full Recovery'),
(3, 'Real Estate Fraud', 'Property', '2024-03-10', 30000000.00, 75, 'Ravi Builders', 'Ongoing', 'India', 'Bangalore', 'Times of India', 24, 'High', 'Upper Middle Income', 'Partial Recovery'),
(4, 'Investment Scam', 'Financial', '2024-04-01', 7000000.00, 30, 'Future Ventures', 'Resolved', 'India', 'Hyderabad', 'Hindu', 8, 'Medium', 'Low Income', 'Full Recovery'),
(5, 'Loan Fraud', 'Financial', '2024-05-10', 20000000.00, 100, 'ABC Loans', 'Under Investigation', 'India', 'Chennai', 'Business Standard', 14, 'High', 'Middle Income', 'No Recovery'),
(6, 'Fake Charity', 'Charity', '2024-06-15', 15000000.00, 40, 'Helping Hands', 'Resolved', 'India', 'Pune', 'The Week', 10, 'Medium', 'Low Income', 'Full Recovery'),
(7, 'Credit Card Fraud', 'Cyber', '2024-07-20', 25000000.00, 150, 'CardTech', 'Resolved', 'India', 'Mumbai', 'Economic Times', 7, 'High', 'Middle Income', 'Full Recovery'),
(8, 'Insurance Scam', 'Financial', '2024-08-05', 12000000.00, 60, 'Secure Insurance', 'Ongoing', 'India', 'Chennai', 'The Hindu', 11, 'High', 'Upper Middle Income', 'Partial Recovery'),
(9, 'Employment Scam', 'Employment', '2024-09-15', 8000000.00, 25, 'JobSecure', 'Resolved', 'India', 'Delhi', 'Times Now', 9, 'Medium', 'Middle Income', 'Full Recovery'),
(10, 'Online Fraud', 'Cyber', '2024-10-10', 6000000.00, 35, 'WebSecure', 'Under Investigation', 'India', 'Bangalore', 'Deccan Herald', 5, 'Low', 'Low Income', 'No Recovery'),
(11, 'Scholarship Scam', 'Education', '2024-11-05', 18000000.00, 70, 'EduTrust', 'Resolved', 'India', 'Mumbai', 'Hindustan Times', 12, 'Medium', 'Low Income', 'Full Recovery'),
(12, 'Contract Scam', 'Property', '2024-12-01', 15000000.00, 50, 'BuildRight', 'Ongoing', 'India', 'Hyderabad', 'The Times', 15, 'High', 'Middle Income', 'Partial Recovery'),
(13, 'Forex Fraud', 'Financial', '2024-01-20', 20000000.00, 90, 'ForexMax', 'Resolved', 'India', 'Delhi', 'Mint', 6, 'High', 'Upper Middle Income', 'Full Recovery'),
(14, 'Tax Evasion', 'Financial', '2024-02-15', 40000000.00, 80, 'Evasion Experts', 'Under Investigation', 'India', 'Chennai', 'Business Line', 18, 'High', 'High Income', 'No Recovery'),
(15, 'Medical Scam', 'Health', '2024-03-25', 5000000.00, 20, 'MedCare', 'Resolved', 'India', 'Pune', 'Health Times', 4, 'Medium', 'Low Income', 'Full Recovery'),
(16, 'Travel Scam', 'Travel', '2024-04-10', 10000000.00, 60, 'TravelSafe', 'Resolved', 'India', 'Mumbai', 'Travel Weekly', 8, 'Medium', 'Middle Income', 'Full Recovery'),
(17, 'Debt Collection Scam', 'Financial', '2024-05-05', 30000000.00, 40, 'DebtMaster', 'Ongoing', 'India', 'Delhi', 'Business Today', 14, 'High', 'Low Income', 'Partial Recovery'),
(18, 'Rental Fraud', 'Property', '2024-06-20', 7000000.00, 25, 'RentSecure', 'Resolved', 'India', 'Bangalore', 'The New Indian Express', 7, 'Medium', 'Middle Income', 'Full Recovery'),
(19, 'Charity Fraud', 'Charity', '2024-07-15', 15000000.00, 55, 'CharityPlus', 'Resolved', 'India', 'Pune', 'Charity Today', 11, 'High', 'Low Income', 'Full Recovery'),
(20, 'Subscription Scam', 'Cyber', '2024-08-30', 8000000.00, 45, 'SubSafe', 'Under Investigation', 'India', 'Hyderabad', 'Tech Today', 9, 'Medium', 'Middle Income', 'Partial Recovery');

UPDATE State_Info
SET pop = 115000000, state_gdp = 3600000000000.00, major_industries = 'IT, Agriculture, Manufacturing'
WHERE state_id = 1;

UPDATE State_Info
SET population_density = 350.00, region_area = 310000.00
WHERE state_id = 2;

UPDATE State_Info
SET state_capital = 'New Patna', state_governor = 'Rajendra Prasad'
WHERE state_id = 3;

UPDATE Scam_Info
SET amount_lost = 55000000.00, status = 'Resolved'
WHERE scam_id = 1;

UPDATE Scam_Info
SET scam_impact = 'High', recovery_status = 'Full Recovery'
WHERE scam_id = 2;

UPDATE Scam_Info
SET report_source = 'Economic Times', scam_duration = 15
WHERE scam_id = 3;

DELETE FROM State_Info WHERE state_id = 5;
DELETE FROM State_Info WHERE state_id = 8;
DELETE FROM State_Info WHERE state_id = 10;

DELETE FROM Scam_Info WHERE scam_id = 7;
DELETE FROM Scam_Info WHERE scam_id = 10;
DELETE FROM Scam_Info WHERE scam_id = 14;

SELECT * FROM State_Info
WHERE pop > 100000000 AND state_gdp < 4000000000000.00;

SELECT * FROM Scam_Info
WHERE amount_lost BETWEEN 5000000.00 AND 20000000.00;

SELECT * FROM State_Info
WHERE state_code IN ('MH', 'UP', 'BR');

SELECT * FROM Scam_Info
WHERE recovery_status NOT IN ('Full Recovery');