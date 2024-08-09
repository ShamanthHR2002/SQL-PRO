CREATE DATABASE JOINS;
USE JOINS;
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100) NOT NULL
);

CREATE TABLE Assignments (
    AssignmentID INT PRIMARY KEY,
    EmployeeID INT,
    ProjectID INT,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing'),
(5, 'Sales');

INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID) VALUES
(1, 'John', 'Doe', 1),
(2, 'Jane', 'Smith', 2),
(3, 'Sam', 'Brown', 3),
(4, 'Alice', 'Johnson', 4),
(5, 'Bob', 'Davis', 5),
(6, 'Michael', 'Wilson', 1),
(7, 'Emily', 'Taylor', 2),
(8, 'Chris', 'Lee', 3),
(9, 'Katie', 'Martin', 4),
(10, 'Tom', 'Anderson', 5),
(11, 'Laura', 'Thomas', 1),
(12, 'James', 'Jackson', 2),
(13, 'Olivia', 'White', 3),
(14, 'Ethan', 'Harris', 4),
(15, 'Sophia', 'Clark', 5);

INSERT INTO Projects (ProjectID, ProjectName) VALUES
(1, 'Project A'),
(2, 'Project B'),
(3, 'Project C'),
(4, 'Project D'),
(5, 'Project E');

INSERT INTO Assignments (AssignmentID, EmployeeID, ProjectID) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 1),
(7, 7, 2),
(8, 8, 3),
(9, 9, 4),
(10, 10, 5),
(11, 11, 1),
(12, 12, 2),
(13, 13, 3),
(14, 14, 4),
(15, 15, 5);

SELECT e.EmployeeID, e.FirstName, e.LastName, d.DepartmentName, p.ProjectName
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID
INNER JOIN Assignments a ON e.EmployeeID = a.EmployeeID
INNER JOIN Projects p ON a.ProjectID = p.ProjectID;

SELECT e.EmployeeID, e.FirstName, e.LastName, d.DepartmentName, p.ProjectName
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID
LEFT JOIN Assignments a ON e.EmployeeID = a.EmployeeID
LEFT JOIN Projects p ON a.ProjectID = p.ProjectID;

SELECT e.EmployeeID, e.FirstName, e.LastName, d.DepartmentName, p.ProjectName
FROM Employees e
RIGHT JOIN Departments d ON e.DepartmentID = d.DepartmentID
RIGHT JOIN Assignments a ON e.EmployeeID = a.EmployeeID
RIGHT JOIN Projects p ON a.ProjectID = p.ProjectID;

SELECT e.EmployeeID, e.FirstName, e.LastName, d.DepartmentName, p.ProjectName
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID
LEFT JOIN Assignments a ON e.EmployeeID = a.EmployeeID
LEFT JOIN Projects p ON a.ProjectID = p.ProjectID;

SELECT e.EmployeeID, e.FirstName, e.LastName, d.DepartmentName, p.ProjectName
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID
RIGHT JOIN Assignments a ON e.EmployeeID = a.EmployeeID
RIGHT JOIN Projects p ON a.ProjectID = p.ProjectID;

SELECT e.EmployeeID, e.FirstName, e.LastName, d.DepartmentName, p.ProjectName
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID
RIGHT JOIN Assignments a ON e.EmployeeID = a.EmployeeID
RIGHT JOIN Projects p ON a.ProjectID = p.ProjectID;

SELECT e.EmployeeID, e.FirstName, e.LastName, d.DepartmentName, p.ProjectName
FROM Employees e
RIGHT JOIN Departments d ON e.DepartmentID = d.DepartmentID
LEFT JOIN Assignments a ON e.EmployeeID = a.EmployeeID
LEFT JOIN Projects p ON a.ProjectID = p.ProjectID;