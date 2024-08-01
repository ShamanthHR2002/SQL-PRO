CREATE DATABASE company;
USE company;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Salary DECIMAL(10, 2) CHECK (Salary > 0)
);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL UNIQUE,
    Location VARCHAR(100) NOT NULL,
    Budget DECIMAL(15, 2) CHECK (Budget >= 0),
    ManagerID INT,
    FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, DateOfBirth, Salary) VALUES
(1, 'John', 'Doe', '1980-06-15', 50000.00),
(2, 'Jane', 'Smith', '1985-08-23', 55000.00),
(3, 'Alice', 'Johnson', '1990-12-01', 60000.00),
(4, 'Bob', 'Brown', '1975-11-12', 45000.00),
(5, 'Carol', 'Davis', '1982-07-09', 65000.00),
(6, 'David', 'Wilson', '1988-03-24', 70000.00),
(7, 'Eva', 'Miller', '1993-05-17', 52000.00),
(8, 'Frank', 'Moore', '1979-09-30', 48000.00),
(9, 'Grace', 'Taylor', '1991-04-21', 59000.00),
(10, 'Hank', 'Anderson', '1984-10-12', 58000.00);

INSERT INTO Departments (DepartmentID, DepartmentName, Location, Budget, ManagerID) VALUES
(1, 'HR', 'New York', 150000.00, 1),
(2, 'Finance', 'Chicago', 200000.00, 2),
(3, 'IT', 'San Francisco', 250000.00, 3),
(4, 'Marketing', 'Los Angeles', 175000.00, 4),
(5, 'Sales', 'Boston', 300000.00, 5),
(6, 'R&D', 'Seattle', 220000.00, 6),
(7, 'Operations', 'Dallas', 180000.00, 7),
(8, 'Customer Service', 'Miami', 160000.00, 8),
(9, 'Legal', 'Atlanta', 140000.00, 9),
(10, 'Admin', 'Philadelphia', 170000.00, 10);

SELECT * FROM Employees
WHERE Salary BETWEEN 50000.00 AND 60000.00;

SELECT * FROM Departments
WHERE DepartmentName LIKE 'S%';

SELECT * FROM Employees
ORDER BY LastName ASC;

SELECT EmployeeID,
    CONCAT(UPPER(FirstName), ' ', UPPER(LastName)) AS FullName,LENGTH(CONCAT(FirstName, ' ', LastName)) AS NameLength
FROM Employees;

CREATE INDEX idx_dept_name ON Departments (DepartmentName);

SELECT * FROM Departments
WHERE DepartmentName = 'HR';