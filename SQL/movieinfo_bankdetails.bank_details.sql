CREATE DATABASE MOVIEINFO_BANKDETAILS;
USE MOVIEINFO_BANKDETAILS;

CREATE TABLE movie_info (
    title VARCHAR(255),
    genre VARCHAR(255),
    director VARCHAR(255),
    release_year INT,
    duration INT
);

CREATE TABLE bank_details (
    account_holder VARCHAR(255),
    account_number BIGINT,
    bank_name VARCHAR(255),
    branch_code INT,
    is_active BOOLEAN
);

ALTER TABLE movie_info
ADD COLUMN film_language VARCHAR(255),
ADD COLUMN film_country VARCHAR(255),
ADD COLUMN production_budget BIGINT,
ADD COLUMN gross_income BIGINT,
ADD COLUMN critics_rating BOOLEAN;

ALTER TABLE bank_details
ADD COLUMN type_of_account VARCHAR(255),
ADD COLUMN account_balance BIGINT,
ADD COLUMN account_currency VARCHAR(255),
ADD COLUMN date_opened DATE,
ADD COLUMN phone_number VARCHAR(255);

ALTER TABLE movie_info
RENAME COLUMN film_language TO language,
RENAME COLUMN film_country TO country,
RENAME COLUMN production_budget TO budget,
RENAME COLUMN gross_income TO income,
RENAME COLUMN critics_rating TO rating;

ALTER TABLE bank_details
RENAME COLUMN type_of_account TO account_type,
RENAME COLUMN account_balance TO balance,
RENAME COLUMN account_currency TO currency,
RENAME COLUMN date_opened TO opened_date,
RENAME COLUMN phone_number TO contact_number;

INSERT INTO movie_info (title, genre, director, release_year, duration, language, country, budget, income, rating)
VALUES
('KGF Chapter 1', 'Action', 'Prashanth Neel', 2018, 156, 'Kannada', 'India', 80000000, 250000000, true),
('KGF Chapter 2', 'Action', 'Prashanth Neel', 2022, 168, 'Kannada', 'India', 100000000, 1000000000, true),
('Raajakumara', 'Drama', 'Santhosh Ananddram', 2017, 148, 'Kannada', 'India', 20000000, 75000000, true),
('Kirik Party', 'Comedy', 'Rishab Shetty', 2016, 165, 'Kannada', 'India', 40000000, 80000000, true),
('Tagaru', 'Action', 'Duniya Soori', 2018, 129, 'Kannada', 'India', 25000000, 50000000, true),
('Ugramm', 'Action', 'Prashanth Neel', 2014, 132, 'Kannada', 'India', 15000000, 30000000, true),
('Mungaru Male', 'Romance', 'Yogaraj Bhat', 2006, 143, 'Kannada', 'India', 5000000, 50000000, true),
('Anjaniputra', 'Action', 'Harsha', 2017, 137, 'Kannada', 'India', 30000000, 60000000, true),
('Roberrt', 'Action', 'Tharun Sudhir', 2021, 166, 'Kannada', 'India', 60000000, 100000000, true),
('Kotigobba 3', 'Action', 'Shiva Karthik', 2021, 146, 'Kannada', 'India', 70000000, 150000000, true);

INSERT INTO bank_details (account_holder, account_number, bank_name, branch_code, is_active, account_type, balance, currency, opened_date, contact_number)
VALUES
('Ravi Kumar', 123456789012, 'State Bank of India', 101, true, 'Checking', 50000, 'INR', '2020-01-01', '9876543210'),
('Anita Shetty', 987654321098, 'Canara Bank', 102, true, 'Savings', 150000, 'INR', '2019-02-02', '8765432109'),
('Vijay Kumar', 123123123123, 'Karnataka Bank', 103, true, 'Checking', 250000, 'INR', '2018-03-03', '7654321098'),
('Sunita Rao', 321321321321, 'Syndicate Bank', 104, true, 'Savings', 350000, 'INR', '2017-04-04', '6543210987'),
('Rakesh Gowda', 111111111111, 'Vijaya Bank', 105, true, 'Checking', 450000, 'INR', '2016-05-05', '5432109876'),
('Lakshmi Hegde', 222222222222, 'Corporation Bank', 106, true, 'Savings', 550000, 'INR', '2015-06-06', '4321098765'),
('Manoj Desai', 333333333333, 'Axis Bank', 107, true, 'Checking', 650000, 'INR', '2014-07-07', '3210987654'),
('Deepa Shenoy', 444444444444, 'HDFC Bank', 108, true, 'Savings', 750000, 'INR', '2013-08-08', '2109876543'),
('Rajesh Nair', 555555555555, 'ICICI Bank', 109, true, 'Checking', 850000, 'INR', '2012-09-09', '1098765432'),
('Priya Reddy', 666666666666, 'Union Bank', 110, true, 'Savings', 950000, 'INR', '2011-10-10', '0987654321');

UPDATE movie_info SET duration = 160 WHERE title = 'KGF Chapter 1';
UPDATE movie_info SET genre = 'Thriller' WHERE title = 'Kirik Party';
UPDATE movie_info SET release_year = 2020 WHERE title = 'Kotigobba 3';
UPDATE movie_info SET language = 'Hindi' WHERE title = 'Mungaru Male';
UPDATE movie_info SET budget = 120000000 WHERE title = 'KGF Chapter 2';

UPDATE bank_details SET balance = 60000 WHERE account_holder = 'Ravi Kumar';
UPDATE bank_details SET bank_name = 'IDBI Bank' WHERE account_holder = 'Anita Shetty';
UPDATE bank_details SET branch_code = 202 WHERE account_holder = 'Vijay Kumar';
UPDATE bank_details SET contact_number = '9876543211' WHERE account_holder = 'Sunita Rao';
UPDATE bank_details SET account_type = 'Business' WHERE account_holder = 'Rakesh Gowda';

DELETE FROM movie_info WHERE title = 'Anjaniputra';
DELETE FROM movie_info WHERE director = 'Prashanth Neel';
DELETE FROM movie_info WHERE language = 'Kannada';

DELETE FROM bank_details WHERE account_holder = 'Priya Reddy';
DELETE FROM bank_details WHERE bank_name = 'Vijaya Bank';
DELETE FROM bank_details WHERE branch_code = 106;


SELECT * FROM movie_info WHERE genre = 'Action';


SELECT * FROM bank_details WHERE balance > 500000 AND is_active = true;


SELECT * FROM movie_info WHERE release_year = 2021 OR duration > 150;

SELECT * FROM bank_details WHERE bank_name IN ('Canara Bank', 'Karnataka Bank', 'Axis Bank');


SELECT * FROM movie_info WHERE director NOT IN ('Prashanth Neel', 'Harsha');