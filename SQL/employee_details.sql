CREATE DATABASE new_database;
USE new_database;
CREATE TABLE employee_details (
    emp_id INT ,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    position VARCHAR(50),
    salary DECIMAL(10, 2)
);

ALTER TABLE employee_details ADD COLUMN date_of_birth DATE,ADD COLUMN email VARCHAR(100),
ADD COLUMN phone_number VARCHAR(15),ADD COLUMN address VARCHAR(255),ADD COLUMN hire_date DATE;


ALTER TABLE employee_details DROP COLUMN address,DROP COLUMN hire_date;


ALTER TABLE employee_details RENAME COLUMN first_name TO fname,RENAME COLUMN last_name TO lname,
RENAME COLUMN position TO job_title,RENAME COLUMN salary TO annual_salary,RENAME COLUMN phone_number TO contact_number;


ALTER TABLE employee_details MODIFY COLUMN fname VARCHAR(100),MODIFY COLUMN lname VARCHAR(100),MODIFY COLUMN job_title VARCHAR(100),
MODIFY COLUMN annual_salary DECIMAL(15, 2),MODIFY COLUMN contact_number VARCHAR(20);

