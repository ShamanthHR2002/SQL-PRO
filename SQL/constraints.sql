CREATE DATABASE company_db;
USE company_db;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY, first_name VARCHAR(50), last_name VARCHAR(50), email VARCHAR(100) UNIQUE,
    salary DECIMAL(10, 2) CHECK (salary )
);

CREATE TABLE departments (
    dept_id INT PRIMARY KEY, dept_name VARCHAR(100) UNIQUE, location VARCHAR(100),
    manager_id INT, budget DECIMAL(10, 2) CHECK (budget)
);

INSERT INTO employees (emp_id, first_name, last_name, email, salary) VALUES
(1, 'Alice', 'Brown', 'alice.brown@example.com', 62000),
(2, 'Bob', 'White', 'bob.white@example.com', 78000),
(3, 'Charlie', 'Black', 'charlie.black@example.com', 52000),
(4, 'Diana', 'Green', 'diana.green@example.com', 81000),
(5, 'Eve', 'Blue', 'eve.blue@example.com', 57000);

INSERT INTO departments (dept_id, dept_name, location, manager_id, budget) VALUES
(1, 'Engineering', 'Seattle', 2, 510000),
(2, 'Design', 'Austin', 4, 320000),
(3, 'Operations', 'Denver', 1, 630000),
(4, 'Support', 'Miami', 3, 410000),
(5, 'Research', 'Raleigh', 5, 460000);

ALTER TABLE employees ADD CONSTRAINT uq_email UNIQUE (email);
ALTER TABLE employees ADD CONSTRAINT chk_salary CHECK (salary );
ALTER TABLE departments ADD CONSTRAINT uq_dept_name UNIQUE (dept_name);
ALTER TABLE departments ADD CONSTRAINT chk_budget CHECK (budget);
ALTER TABLE employees DROP CONSTRAINT uq_email;
ALTER TABLE employees DROP CONSTRAINT chk_salary;
ALTER TABLE departments DROP CONSTRAINT uq_dept_name;
ALTER TABLE departments DROP CONSTRAINT chk_budget;
ALTER TABLE employees ADD CONSTRAINT uq_email UNIQUE (email);
ALTER TABLE employees ADD CONSTRAINT chk_salary CHECK (salary);
ALTER TABLE departments ADD CONSTRAINT uq_dept_name UNIQUE (dept_name);
ALTER TABLE departments ADD CONSTRAINT chk_budget CHECK (budget);
ALTER TABLE employees DROP CONSTRAINT uq_email;
ALTER TABLE employees DROP CONSTRAINT chk_salary;
ALTER TABLE departments DROP CONSTRAINT uq_dept_name;
ALTER TABLE departments DROP CONSTRAINT chk_budget;

select * from employees;
select * from departments;