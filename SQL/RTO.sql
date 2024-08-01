CREATE DATABASE RTO;
USE RTO;
CREATE TABLE LLR_INFO (
    LLR_ID INT PRIMARY KEY,
    NAME VARCHAR(50),
    ADDRESS VARCHAR(100),
    DOB DATE,
    GENDER CHAR(1),
    PHONE VARCHAR(15),
    EMAIL VARCHAR(50),
    APPLICATION_DATE DATE,
    EXPIRY_DATE DATE,
    STATUS VARCHAR(20)
);

CREATE TABLE LLR_TEST_INFO (
    LLR_ID INT,
    TEST_ID INT PRIMARY KEY,
    TEST_DATE DATE,
    TEST_CENTER VARCHAR(50),
    SCORE INT,
    RESULT VARCHAR(20),
    FOREIGN KEY (LLR_ID) REFERENCES LLR_INFO(LLR_ID)
);

CREATE TABLE DRIVING_LICENCE_INFO (
    DL_ID INT PRIMARY KEY,
    LLR_ID INT,
    NAME VARCHAR(50),
    ADDRESS VARCHAR(100),
    DOB DATE,
    GENDER CHAR(1),
    PHONE VARCHAR(15),
    EMAIL VARCHAR(50),
    ISSUE_DATE DATE,
    EXPIRY_DATE DATE,
    STATUS VARCHAR(20),
    FOREIGN KEY (LLR_ID) REFERENCES LLR_INFO(LLR_ID)
);

CREATE TABLE DRIVING_LICENSE_TEST_INFO (
    DL_ID INT,
    TEST_ID INT PRIMARY KEY,
    TEST_DATE DATE,
    TEST_CENTER VARCHAR(50),
    SCORE INT,
    RESULT VARCHAR(20),
    FOREIGN KEY (DL_ID) REFERENCES DRIVING_LICENCE_INFO(DL_ID)
);
INSERT INTO LLR_INFO (LLR_ID, NAME, ADDRESS, DOB, GENDER, PHONE, EMAIL, APPLICATION_DATE, EXPIRY_DATE, STATUS)
VALUES 
(1, 'John Doe', '123 Main St', '1990-01-01', 'M', '555-1234', 'john.doe@example.com', '2023-01-01', '2024-01-01', 'Active'),
(2, 'Jane Smith', '456 Elm St', '1985-02-02', 'F', '555-5678', 'jane.smith@example.com', '2023-02-01', '2024-02-01', 'Active'),
(3, 'Bob Johnson', '789 Oak St', '1975-03-03', 'M', '555-8765', 'bob.johnson@example.com', '2023-03-01', '2024-03-01', 'Active'),
(4, 'Alice Brown', '321 Pine St', '1980-04-04', 'F', '555-4321', 'alice.brown@example.com', '2023-04-01', '2024-04-01', 'Active'),
(5, 'Charlie Davis', '654 Cedar St', '1995-05-05', 'M', '555-6789', 'charlie.davis@example.com', '2023-05-01', '2024-05-01', 'Active'),
(6, 'Diana Evans', '987 Birch St', '1982-06-06', 'F', '555-9876', 'diana.evans@example.com', '2023-06-01', '2024-06-01', 'Active'),
(7, 'Edward Wilson', '321 Maple St', '1992-07-07', 'M', '555-6543', 'edward.wilson@example.com', '2023-07-01', '2024-07-01', 'Active'),
(8, 'Fiona Scott', '654 Willow St', '1988-08-08', 'F', '555-3210', 'fiona.scott@example.com', '2023-08-01', '2024-08-01', 'Active'),
(9, 'George Harris', '987 Aspen St', '1978-09-09', 'M', '555-7890', 'george.harris@example.com', '2023-09-01', '2024-09-01', 'Active'),
(10, 'Helen Clark', '123 Fir St', '1983-10-10', 'F', '555-0987', 'helen.clark@example.com', '2023-10-01', '2024-10-01', 'Active'),
(11, 'Ian Lewis', '456 Spruce St', '1990-11-11', 'M', '555-1234', 'ian.lewis@example.com', '2023-11-01', '2024-11-01', 'Active'),
(12, 'Jill Walker', '789 Poplar St', '1986-12-12', 'F', '555-5678', 'jill.walker@example.com', '2023-12-01', '2024-12-01', 'Active'),
(13, 'Kevin Hall', '321 Ash St', '1976-01-13', 'M', '555-8765', 'kevin.hall@example.com', '2023-01-15', '2024-01-15', 'Active'),
(14, 'Laura Young', '654 Redwood St', '1981-02-14', 'F', '555-4321', 'laura.young@example.com', '2023-02-15', '2024-02-15', 'Active'),
(15, 'Mark Allen', '987 Cypress St', '1993-03-15', 'M', '555-6789', 'mark.allen@example.com', '2023-03-15', '2024-03-15', 'Active'),
(16, 'Nina King', '123 Dogwood St', '1979-04-16', 'F', '555-9876', 'nina.king@example.com', '2023-04-15', '2024-04-15', 'Active'),
(17, 'Oscar Martinez', '456 Chestnut St', '1987-05-17', 'M', '555-6543', 'oscar.martinez@example.com', '2023-05-15', '2024-05-15', 'Active'),
(18, 'Paula Rodriguez', '789 Magnolia St', '1989-06-18', 'F', '555-3210', 'paula.rodriguez@example.com', '2023-06-15', '2024-06-15', 'Active'),
(19, 'Quinn Lee', '321 Sycamore St', '1977-07-19', 'M', '555-7890', 'quinn.lee@example.com', '2023-07-15', '2024-07-15', 'Active'),
(20, 'Rachel Perez', '654 Hickory St', '1984-08-20', 'F', '555-0987', 'rachel.perez@example.com', '2023-08-15', '2024-08-15', 'Active');

INSERT INTO LLR_TEST_INFO (LLR_ID, TEST_ID, TEST_DATE, TEST_CENTER, SCORE, RESULT)
VALUES 
(1, 201, '2023-02-01', 'Center A', 85, 'Pass'),
(2, 202, '2023-02-15', 'Center B', 90, 'Pass'),
(3, 203, '2023-03-01', 'Center C', 75, 'Pass'),
(4, 204, '2023-03-15', 'Center D', 95, 'Pass'),
(5, 205, '2023-04-01', 'Center E', 65, 'Fail'),
(6, 206, '2023-04-15', 'Center F', 80, 'Pass'),
(7, 207, '2023-05-01', 'Center G', 88, 'Pass'),
(8, 208, '2023-05-15', 'Center H', 92, 'Pass'),
(9, 209, '2023-06-01', 'Center I', 78, 'Pass'),
(10, 210, '2023-06-15', 'Center J', 85, 'Pass'),
(11, 211, '2023-07-01', 'Center K', 90, 'Pass'),
(12, 212, '2023-07-15', 'Center L', 82, 'Pass'),
(13, 213, '2023-08-01', 'Center M', 87, 'Pass'),
(14, 214, '2023-08-15', 'Center N', 93, 'Pass'),
(15, 215, '2023-09-01', 'Center O', 70, 'Fail'),
(16, 216, '2023-09-15', 'Center P', 95, 'Pass'),
(17, 217, '2023-10-01', 'Center Q', 68, 'Fail'),
(18, 218, '2023-10-15', 'Center R', 88, 'Pass'),
(19, 219, '2023-11-01', 'Center S', 91, 'Pass'),
(20, 220, '2023-11-15', 'Center T', 84, 'Pass');

INSERT INTO DRIVING_LICENCE_INFO (DL_ID, LLR_ID, NAME, ADDRESS, DOB, GENDER, PHONE, EMAIL, ISSUE_DATE, EXPIRY_DATE, STATUS)
VALUES 
(301, 1, 'John Doe', '123 Main St', '1990-01-01', 'M', '555-1234', 'john.doe@example.com', '2023-12-01', '2028-12-01', 'Active'),
(302, 2, 'Jane Smith', '456 Elm St', '1985-02-02', 'F', '555-5678', 'jane.smith@example.com', '2023-12-15', '2028-12-15', 'Active'),
(303, 3, 'Bob Johnson', '789 Oak St', '1975-03-03', 'M', '555-8765', 'bob.johnson@example.com', '2024-01-01', '2029-01-01', 'Active'),
(304, 4, 'Alice Brown', '321 Pine St', '1980-04-04', 'F', '555-4321', 'alice.brown@example.com', '2024-01-15', '2029-01-15', 'Active'),
(305, 5, 'Charlie Davis', '654 Cedar St', '1995-05-05', 'M', '555-6789', 'charlie.davis@example.com', '2024-02-01', '2029-02-01', 'Active'),
(306, 6, 'Diana Evans', '987 Birch St', '1982-06-06', 'F', '555-9876', 'diana.evans@example.com', '2024-02-15', '2029-02-15', 'Active'),
(307, 7, 'Edward Wilson', '321 Maple St', '1992-07-07', 'M', '555-6543', 'edward.wilson@example.com', '2024-03-01', '2029-03-01', 'Active'),
(308, 8, 'Fiona Scott', '654 Willow St', '1988-08-08', 'F', '555-3210', 'fiona.scott@example.com', '2024-03-15', '2029-03-15', 'Active'),
(309, 9, 'George Harris', '987 Aspen St', '1978-09-09', 'M', '555-7890', 'george.harris@example.com', '2024-04-01', '2029-04-01', 'Active'),
(310, 10, 'Helen Clark', '123 Fir St', '1983-10-10', 'F', '555-0987', 'helen.clark@example.com', '2024-04-15', '2029-04-15', 'Active'),
(311, 11, 'Ian Lewis', '456 Spruce St', '1990-11-11', 'M', '555-1234', 'ian.lewis@example.com', '2024-05-01', '2029-05-01', 'Active'),
(312, 12, 'Jill Walker', '789 Poplar St', '1986-12-12', 'F', '555-5678', 'jill.walker@example.com', '2024-05-15', '2029-05-15', 'Active'),
(313, 13, 'Kevin Hall', '321 Ash St', '1976-01-13', 'M', '555-8765', 'kevin.hall@example.com', '2024-06-01', '2029-06-01', 'Active'),
(314, 14, 'Laura Young', '654 Redwood St', '1981-02-14', 'F', '555-4321', 'laura.young@example.com', '2024-06-15', '2029-06-15', 'Active'),
(315, 15, 'Mark Allen', '987 Cypress St', '1993-03-15', 'M', '555-6789', 'mark.allen@example.com', '2024-07-01', '2029-07-01', 'Active'),
(316, 16, 'Nina King', '123 Dogwood St', '1979-04-16', 'F', '555-9876', 'nina.king@example.com', '2024-07-15', '2029-07-15', 'Active'),
(317, 17, 'Oscar Martinez', '456 Chestnut St', '1987-05-17', 'M', '555-6543', 'oscar.martinez@example.com', '2024-08-01', '2029-08-01', 'Active'),
(318, 18, 'Paula Rodriguez', '789 Magnolia St', '1989-06-18', 'F', '555-3210', 'paula.rodriguez@example.com', '2024-08-15', '2029-08-15', 'Active'),
(319, 19, 'Quinn Lee', '321 Sycamore St', '1977-07-19', 'M', '555-7890', 'quinn.lee@example.com', '2024-09-01', '2029-09-01', 'Active'),
(320, 20, 'Rachel Perez', '654 Hickory St', '1984-08-20', 'F', '555-0987', 'rachel.perez@example.com', '2024-09-15', '2029-09-15', 'Active');

INSERT INTO DRIVING_LICENSE_TEST_INFO (DL_ID, TEST_ID, TEST_DATE, TEST_CENTER, SCORE, RESULT)
VALUES 
(301, 401, '2024-01-01', 'Center A', 85, 'Pass'),
(302, 402, '2024-01-15', 'Center B', 90, 'Pass'),
(303, 403, '2024-02-01', 'Center C', 75, 'Pass'),
(304, 404, '2024-02-15', 'Center D', 95, 'Pass'),
(305, 405, '2024-03-01', 'Center E', 65, 'Fail'),
(306, 406, '2024-03-15', 'Center F', 80, 'Pass'),
(307, 407, '2024-04-01', 'Center G', 88, 'Pass'),
(308, 408, '2024-04-15', 'Center H', 92, 'Pass'),
(309, 409, '2024-05-01', 'Center I', 78, 'Pass'),
(310, 410, '2024-05-15', 'Center J', 85, 'Pass'),
(311, 411, '2024-06-01', 'Center K', 90, 'Pass'),
(312, 412, '2024-06-15', 'Center L', 82, 'Pass'),
(313, 413, '2024-07-01', 'Center M', 87, 'Pass'),
(314, 414, '2024-07-15', 'Center N', 93, 'Pass'),
(315, 415, '2024-08-01', 'Center O', 70, 'Fail'),
(316, 416, '2024-08-15', 'Center P', 95, 'Pass'),
(317, 417, '2024-09-01', 'Center Q', 68, 'Fail'),
(318, 418, '2024-09-15', 'Center R', 88, 'Pass'),
(319, 419, '2024-10-01', 'Center S', 91, 'Pass'),
(320, 420, '2024-10-15', 'Center T', 84, 'Pass');

INSERT INTO LLR_INFO (LLR_ID, NAME, ADDRESS, DOB, GENDER, PHONE, EMAIL, APPLICATION_DATE, EXPIRY_DATE, STATUS)
VALUES (1, 'John Doe', '123 New Main St', '1990-01-01', 'M', '555-0000', 'john.new@example.com', '2023-01-01', '2024-01-01', 'Active')
ON DUPLICATE KEY UPDATE
NAME = VALUES(NAME), 
ADDRESS = VALUES(ADDRESS), 
PHONE = VALUES(PHONE), 
EMAIL = VALUES(EMAIL);

REPLACE INTO LLR_INFO (LLR_ID, NAME, ADDRESS, DOB, GENDER, PHONE, EMAIL, APPLICATION_DATE, EXPIRY_DATE, STATUS)
VALUES (1, 'John Doe', '123 New Main St', '1990-01-01', 'M', '555-0000', 'john.new@example.com', '2023-01-01', '2024-01-01', 'Active');

