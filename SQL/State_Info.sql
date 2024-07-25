CREATE TABLE state_info (
    state_id INT,
    state_name VARCHAR(50),
    population INT,
    area FLOAT,
    capital VARCHAR(50),
    governor VARCHAR(50),
    founded_year INT,
    timezone VARCHAR(50),
    official_language VARCHAR(50),
    GDP FLOAT
);

CREATE TABLE scam_info (
    scam_id INT ,
    scam_name VARCHAR(50),
    affected_states VARCHAR(50),
    reported_year INT,
    amount_lost FLOAT,
    scam_type VARCHAR(50),
    perpetrator VARCHAR(50),
    num_victims INT,
    resolution_status VARCHAR(50),
    penalties FLOAT
);
ALTER TABLE state_info
ADD COLUMN region VARCHAR(50),
ADD COLUMN major_city VARCHAR(50),
ADD COLUMN average_income FLOAT,
ADD COLUMN crime_rate FLOAT,
ADD COLUMN life_expectancy FLOAT;

ALTER TABLE scam_info
ADD COLUMN detection_method VARCHAR(50),
ADD COLUMN duration INT,
ADD COLUMN impact_level VARCHAR(50),
ADD COLUMN recovery_amount FLOAT,
ADD COLUMN follow_up_action VARCHAR(50);

ALTER TABLE state_info
RENAME COLUMN population TO total_population,
RENAME COLUMN area TO total_area,
RENAME COLUMN GDP TO gdp_value,
RENAME COLUMN founded_year TO establishment_year,
RENAME COLUMN capital TO state_capital;

ALTER TABLE scam_info
RENAME COLUMN reported_year TO year_reported,
RENAME COLUMN amount_lost TO total_amount_lost,
RENAME COLUMN perpetrator TO scam_perpetrator,
RENAME COLUMN num_victims TO number_of_victims,
RENAME COLUMN resolution_status TO status_of_resolution;

ALTER TABLE state_info
MODIFY COLUMN total_population BIGINT,
MODIFY COLUMN total_area DOUBLE,
MODIFY COLUMN gdp_value DOUBLE,
MODIFY COLUMN establishment_year YEAR,
MODIFY COLUMN average_income DOUBLE;

ALTER TABLE scam_info
MODIFY COLUMN total_amount_lost DOUBLE,
MODIFY COLUMN number_of_victims BIGINT,
MODIFY COLUMN duration DOUBLE,
MODIFY COLUMN recovery_amount DOUBLE,
MODIFY COLUMN penalties DOUBLE;

INSERT INTO state_info (state_id, state_name, total_population, total_area, state_capital, governor, establishment_year, timezone, official_language, gdp_value, region, major_city, average_income, crime_rate, life_expectancy)
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



INSERT INTO scam_info (scam_id, scam_name, affected_states, year_reported, total_amount_lost, scam_type, scam_perpetrator, number_of_victims, status_of_resolution, penalties, detection_method, duration, impact_level, recovery_amount, follow_up_action)
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

UPDATE state_info SET total_population = 39600000 WHERE state_id = 1;
UPDATE state_info SET gdp_value = 3.2 WHERE state_id = 1;
UPDATE state_info SET crime_rate = 3.8 WHERE state_id = 1;
UPDATE state_info SET life_expectancy = 81.1 WHERE state_id = 1;
UPDATE state_info SET average_income = 76000 WHERE state_id = 1;

UPDATE scam_info SET total_amount_lost = 66000000 WHERE scam_id = 1;
UPDATE scam_info SET recovery_amount = 1250000 WHERE scam_id = 1;
UPDATE scam_info SET duration = 19 WHERE scam_id = 1;
UPDATE scam_info SET penalties = 160000 WHERE scam_id = 1;
UPDATE scam_info SET follow_up_action = 'Settlement' WHERE scam_id = 1;

DELETE FROM state_info WHERE state_id = 3;
DELETE FROM state_info WHERE state_id = 4;
DELETE FROM state_info WHERE state_id = 5;


DELETE FROM scam_info WHERE scam_id = 3;
DELETE FROM scam_info WHERE scam_id = 4;
DELETE FROM scam_info WHERE scam_id = 5;


SELECT * FROM state_info WHERE region = 'West' AND total_population > 30000000;


SELECT * FROM scam_info WHERE scam_type = 'Financial' OR scam_type = 'Cyber';

SELECT * FROM state_info WHERE state_name IN ('California', 'Texas', 'Florida');


SELECT * FROM scam_info WHERE scam_name NOT IN ('Ponzi Scheme', 'Phishing Attack');
