CREATE DATABASE new_database;
USE new_database;
CREATE TABLE airport_details (
    airport_id INT ,
    name VARCHAR(100),
    city VARCHAR(50),
    country VARCHAR(50),
    capacity INT
);
ALTER TABLE airport_details ADD COLUMN IATA_code CHAR(3),ADD COLUMN ICAO_code CHAR(4),ADD COLUMN runway_count INT,
ADD COLUMN terminal_count INT,ADD COLUMN opened_date DATE;

ALTER TABLE airport_details DROP COLUMN runway_count,DROP COLUMN terminal_count;

ALTER TABLE airport_details RENAME COLUMN name TO airport_name,RENAME COLUMN city TO city_name,
RENAME COLUMN country TO country_name,RENAME COLUMN capacity TO max_capacity,RENAME COLUMN opened_date TO opening_date;

ALTER TABLE airport_details MODIFY COLUMN airport_name VARCHAR(200),MODIFY COLUMN city_name VARCHAR(100),
MODIFY COLUMN country_name VARCHAR(100),MODIFY COLUMN max_capacity BIGINT,MODIFY COLUMN opening_date TIMESTAMP;