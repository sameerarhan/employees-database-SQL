select * from employees;
-- CREATING A TABLE EMPLOYEES

CREATE TABLE employees(
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50),
    phone_number VARCHAR(20),
    hire_date DATE,
    job_id VARCHAR(20),
    salary DECIMAL(10, 2),
    commission_pct DECIMAL(5, 2),
    manager_id INT,
    department_id INT
);

-- Creating TABLE DEPARTMENTS

CREATE TABLE DEPARTMENTS( 
    DEPARTMENT_ID INT PRIMARY KEY,
    DEPARTMENT_NAME VARCHAR(50),
    MANAGER_ID INT NULL,
    LOCATION_ID INT NOT NULL

);