---------------------------creating the DATABASE besantsql------------------------
create database besantsql;

USE besantsql;

----------------------------------- CREATING A TABLE EMPLOYEES------------------------
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

----------------------------------------INSERTING DATA INTO TABLE EMPLOYEES ----------------------------------------------

INSERT INTO employees (
    employee_id, first_name, last_name, email,
    phone_number, hire_date, job_id,
    salary, commission_pct, manager_id, department_id
) VALUES
(100, 'Steven', 'King', 'SKING', '515.123.4567', '2003-06-17', 'AD_PRES', 24000, NULL, NULL, 90),
(101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', '2005-09-21', 'AD_VP', 17000, NULL, 100, 90),
(102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', '2001-01-13', 'AD_VP', 17000, NULL, 100, 90),
(103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '2006-01-03', 'IT_PROG', 9000, NULL, 102, 60),
(104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', '2007-05-21', 'IT_PROG', 6000, NULL, 103, 60),
(105, 'David', 'Austin', 'DAUSTIN', '590.423.4569', '2005-06-25', 'IT_PROG', 4800, NULL, 103, 60),
(106, 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', '2006-02-05', 'IT_PROG', 4800, NULL, 103, 60),
(107, 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', '2007-02-07', 'IT_PROG', 4200, NULL, 103, 60),
(108, 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', '2002-08-17', 'FI_MGR', 12008, NULL, 101, 100),
(109, 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169', '2002-08-16', 'FI_ACCOUNT', 9000, NULL, 108, 100),
(110, 'John', 'Chen', 'JCHEN', '515.124.4269', '2005-09-28', 'FI_ACCOUNT', 8200, NULL, 108, 100),
(111, 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4369', '2005-09-30', 'FI_ACCOUNT', 7700, NULL, 108, 100),
(112, 'Jose Manuel', 'Urman', 'JMURMAN', '515.124.4469', '2006-03-07', 'FI_ACCOUNT', 7800, NULL, 108, 100),
(113, 'Luis', 'Popp', 'LPOPP', '515.124.4567', '2007-12-07', 'FI_ACCOUNT', 6900, NULL, 108, 100),
(114, 'anu', 'Raphaely', 'DRAPHEAL', '515.127.4561', '2002-12-07', 'PU_MAN', 11000, NULL, 100, 30),
(115, 'anu', 'Khoo', 'AKHOO', '515.127.4562', '2003-05-18', 'PU_CLERK', 3100, NULL, 114, 30),
(116, 'anu', 'Baida', 'SBAIDA', '515.127.4563', '2005-12-24', 'PU_CLERK', 2900, NULL, 114, 30),
(117, 'anu', 'Tobias', 'STOBIAS', '515.127.4564', '2005-07-24', 'PU_CLERK', 2800, NULL, 114, 30),
(118, 'anu', 'Himuro', 'GHIMURO', '515.127.4565', '2006-11-15', 'PU_CLERK', 2600, NULL, 114, 30),
(119, 'anu', 'Colmenares', 'KCOLMENA', '515.127.4566', '2007-08-10', 'PU_CLERK', 2500, NULL, 114, 30),
(120, 'Matthew', 'Weiss', 'MWEISS', '650.123.1234', '2004-07-18', 'ST_MAN', 8000, NULL, 100, 50),
(121, 'Adam', 'Fripp', 'AFRIPP', '650.123.2234', '2005-04-10', 'ST_MAN', 8200, NULL, 100, 50),
(122, 'Payam', 'Kaufling', 'PKAUFLIN', '650.123.3234', '2003-05-01', 'ST_MAN', 7900, NULL, 100, 50),
(123, 'Shanta', 'Vollman', 'SVOLLMAN', '650.123.4234', '2005-10-10', 'ST_MAN', 6500, NULL, 100, 50),
(124, 'Kevin', 'Mourgos', 'KMOURGOS', '650.123.5234', '2007-11-16', 'ST_MAN', 5800, NULL, 100, 50),
(125, 'Julia', 'Nayer', 'JNAYER', '650.124.1214', '2005-07-16', 'ST_CLERK', 3200, NULL, 120, 50),
(126, 'Irene', 'Mikkilineni', 'IMIKKILI', '650.124.1224', '2006-09-28', 'ST_CLERK', 2700, NULL, 120, 50),
(127, 'James', 'Landry', 'JLANDRY', '650.124.1334', '2007-01-14', 'ST_CLERK', 2400, NULL, 120, 50),
(128, 'Steven', 'Markle', 'SMARKLE', '650.124.1434', '2008-03-08', 'ST_CLERK', 2200, NULL, 120, 50),
(129, 'Laura', 'Bissot', 'LBISSOT', '650.124.5234', '2005-08-20', 'ST_CLERK', 3300, NULL, 121, 50)
;

SELECT * FROM employees;

INSERT INTO employees (
    employee_id, first_name, last_name, email, phone_number, hire_date, job_id,
    salary, commission_pct, manager_id, department_id
) VALUES
(130, 'Mozhe', 'Atkinson', 'MATKINSO', '650.124.6234', '2005-10-30', 'ST_CLERK', 2800, NULL, 121, 50),
(131, 'James', 'Marlow', 'JAMRLOW', '650.124.7234', '2005-02-16', 'ST_CLERK', 2500, NULL, 121, 50),
(132, 'TJ', 'Olson', 'TJOLSON', '650.124.8234', '2007-04-10', 'ST_CLERK', 2100, NULL, 121, 50),
(133, 'Jason', 'Mallin', 'JMALLIN', '650.127.1934', '2004-06-14', 'ST_CLERK', 3300, NULL, 122, 50),
(134, 'Michael', 'Rogers', 'MROGERS', '650.127.1834', '2006-08-26', 'ST_CLERK', 2900, NULL, 122, 50),
(135, 'Ki', 'Gee', 'KGEE', '650.127.1734', '2007-12-12', 'ST_CLERK', 2400, NULL, 122, 50),
(136, 'Hazel', 'Philtanker', 'HPHILTAN', '650.127.1634', '2008-02-06', 'ST_CLERK', 2200, NULL, 122, 50),
(137, 'Renske', 'Ladwig', 'RLADWIG', '650.121.1234', '2003-07-14', 'ST_CLERK', 3600, NULL, 123, 50),
(138, 'Stephen', 'Stiles', 'SSTILES', '650.121.2034', '2005-10-26', 'ST_CLERK', 3200, NULL, 123, 50),
(139, 'John', 'Seo', 'JSEO', '650.121.2019', '2006-02-12', 'ST_CLERK', 2700, NULL, 123, 50),
(140, 'Joshua', 'Patel', 'JPATEL', '650.121.1834', '2006-04-06', 'ST_CLERK', 2500, NULL, 123, 50),
(141, 'Trenna', 'Rajs', 'TRAJS', '650.121.8009', '2003-10-17', 'ST_CLERK', 3500, NULL, 124, 50),
(142, 'Curtis', 'Davies', 'CDAVIES', '650.121.2994', '2005-01-29', 'ST_CLERK', 3100, NULL, 124, 50),
(143, 'Randall', 'Matos', 'RMATOS', '650.121.2874', '2006-03-15', 'ST_CLERK', 2600, NULL, 124, 50),
(144, 'Peter', 'Vargas', 'PVARGAS', '650.121.2004', '2006-07-09', 'ST_CLERK', 2500, NULL, 124, 50),
(145, 'John', 'Russell', 'JRUSSEL', '011.44.1344.429268', '2004-10-01', 'SA_MAN', 14000, 0.4, 100, 80),
(146, 'Karen', 'Partners', 'KPARTNER', '011.44.1344.467268', '2005-01-05', 'SA_MAN', 13500, 0.3, 100, 80),
(147, 'Alberto', 'Errazuriz', 'AERRAZUR', '011.44.1344.429278', '2005-03-10', 'SA_MAN', 12000, 0.3, 100, 80),
(148, 'Gerald', 'Cambrault', 'GCAMBRAU', '011.44.1344.619268', '2007-10-15', 'SA_MAN', 11000, 0.3, 100, 80),
(149, 'Eleni', 'Zlotkey', 'EZLOTKEY', '011.44.1344.429018', '2008-01-29', 'SA_MAN', 10500, 0.2, 100, 80),
(150, 'Peter', 'Tucker', 'PTUCKER', '011.44.1344.129268', '2005-01-30', 'SA_REP', 10000, 0.3, 145, 80),
(151, 'David', 'Bernstein', 'DBERNSTE', '011.44.1344.345268', '2005-03-24', 'SA_REP', 9500, 0.25, 145, 80),
(152, 'Peter', 'Hall', 'PHALL', '011.44.1344.478968', '2005-08-20', 'SA_REP', 9000, 0.25, 145, 80),
(153, 'Christopher', 'Olsen', 'COLSEN', '011.44.1344.498718', '2006-03-30', 'SA_REP', 8000, 0.2, 145, 80),
(154, 'Nanette', 'Cambrault', 'NCAMBRAU', '011.44.1344.987668', '2006-12-09', 'SA_REP', 7500, 0.2, 145, 80),
(155, 'Oliver', 'Tuvault', 'OTUVAULT', '011.44.1344.486508', '2007-11-23', 'SA_REP', 7000, 0.15, 145, 80),
(156, 'Janette', 'King', 'JKING', '011.44.1345.429268', '2004-01-30', 'SA_REP', 10000, 0.35, 146, 80),
(157, 'Patrick', 'Sully', 'PSULLY', '011.44.1345.929268', '2004-03-04', 'SA_REP', 9500, 0.35, 146, 80),
(158, 'Allan', 'McEwen', 'AMCEWEN', '011.44.1345.829268', '2004-08-01', 'SA_REP', 9000, 0.35, 146, 80),
(159, 'Lindsey', 'Smith', 'LSMITH', '011.44.1345.729268', '2005-03-10', 'SA_REP', 8000, 0.3, 146, 80),
(160, 'Louise', 'Doran', 'LDORAN', '011.44.1345.629268', '2005-12-15', 'SA_REP', 7500, 0.3, 146, 80),
(161, 'Sarath', 'Sewall', 'SSEWALL', '011.44.1345.529268', '2006-11-03', 'SA_REP', 7000, 0.25, 146, 80),
(162, 'Clara', 'Vishney', 'CVISHNEY', '011.44.1346.129268', '2005-11-11', 'SA_REP', 10500, 0.25, 147, 80),
(163, 'Danielle', 'Greene', 'DGREENE', '011.44.1346.229268', '2007-03-19', 'SA_REP', 9500, 0.15, 147, 80),
(164, 'Mattea', 'Marvins', 'MMARVINS', '011.44.1346.329268', '2008-01-24', 'SA_REP', 7200, 0.1, 147, 80),
(165, 'David', 'Lee', 'DLEE', '011.44.1346.529268', '2008-02-23', 'SA_REP', 6800, 0.1, 147, 80),
(166, 'Sundar', 'Ande', 'SANDE', '011.44.1346.629268', '2008-03-24', 'SA_REP', 6400, 0.1, 147, 80),
(167, 'Amit', 'Banda', 'ABANDA', '011.44.1346.729268', '2008-04-21', 'SA_REP', 6200, 0.1, 147, 80),
(168, 'Lisa', 'Ozer', 'LOZER', '011.44.1343.929268', '2005-03-11', 'SA_REP', 11500, 0.25, 148, 80),
(169, 'Harrison', 'Bloom', 'HBLOOM', '011.44.1343.829268', '2006-03-23', 'SA_REP', 10000, 0.2, 148, 80),
(170, 'Tayler', 'Fox', 'TFOX', '011.44.1343.729268', '2006-01-24', 'SA_REP', 9600, 0.2, 148, 80),
(171, 'William', 'Smith', 'WSMITH', '011.44.1343.629268', '2007-02-23', 'SA_REP', 7400, 0.15, 148, 80),
(172, 'Elizabeth', 'Bates', 'EBATES', '011.44.1343.529268', '2007-03-24', 'SA_REP', 7300, 0.15, 148, 80),
(173, 'Sundita', 'Kumar', 'SKUMAR', '011.44.1343.329268', '2008-04-21', 'SA_REP', 6100, 0.1, 148, 80),
(174, 'Ellen', 'Abel', 'EABEL', '011.44.1644.429267', '2004-05-11', 'SA_REP', 11000, 0.3, 149, 80),
(175, 'Alyssa', 'Hutton', 'AHUTTON', '011.44.1644.429266', '2005-03-19', 'SA_REP', 8800, 0.25, 149, 80),
(176, 'Jonathon', 'Taylor', 'JTAYLOR', '011.44.1644.429265', '2006-03-24', 'SA_REP', 8600, 0.2, 149, 80),
(177, 'Jack', 'Livingston', 'JLIVINGS', '011.44.1644.429264', '2006-04-23', 'SA_REP', 8400, 0.2, 149, 80),
(178, 'Kimberely', 'Grant', 'KGRANT', '011.44.1644.429263', '2007-05-24', 'SA_REP', 7000, 0.15, 149, NULL),
(179, 'Charles', 'Johnson', 'CJOHNSON', '011.44.1644.429262', '2008-01-04', 'SA_REP', 6200, 0.1, 149, 80),
(180, 'Winston', 'Taylor', 'WTAYLOR', '650.507.9876', '2006-01-24', 'SH_CLERK', 3200, NULL, 120, 50),
(181, 'Jean', 'Fleaur', 'JFLEAUR', '650.507.9877', '2006-02-23', 'SH_CLERK', 3100, NULL, 120, 50),
(182, 'Martha', 'Sullivan', 'MSULLIVA', '650.507.9878', '2007-06-21', 'SH_CLERK', 2500, NULL, 120, 50),
(183, 'Girard', 'Geoni', 'GGEONI', '650.507.9879', '2008-02-03', 'SH_CLERK', 2800, NULL, 120, 50),
(184, 'Nandita', 'Sarchand', 'NSARCHAN', '650.509.1876', '2004-01-27', 'SH_CLERK', 4200, NULL, 121, 50),
(185, 'Alexis', 'Bull', 'ABULL', '650.509.2876', '2005-02-20', 'SH_CLERK', 4100, NULL, 121, 50),
(186, 'Julia', 'Dellinger', 'JDELLING', '650.509.3876', '2006-06-24', 'SH_CLERK', 3400, NULL, 121, 50),
(187, 'Anthony', 'Cabrio', 'ACABRIO', '650.509.4876', '2007-02-07', 'SH_CLERK', 3000, NULL, 121, 50),
(188, 'Kelly', 'Chung', 'KCHUNG', '650.505.1876', '2005-06-14', 'SH_CLERK', 3800, NULL, 122, 50),
(189, 'Jennifer', 'Dilly', 'JDILLY', '650.505.2876', '2005-08-13', 'SH_CLERK', 3600, NULL, 122, 50),
(190, 'Timothy', 'Gates', 'TGATES', '650.505.3876', '2006-07-11', 'SH_CLERK', 2900, NULL, 122, 50),
(191, 'Randall', 'Perkins', 'RPERKINS', '650.505.4876', '2007-12-19', 'SH_CLERK', 2500, NULL, 122, 50),
(192, 'Sarah', 'Bell', 'SBELL', '650.501.1876', '2004-02-04', 'SH_CLERK', 4000, NULL, 123, 50),
(193, 'Britney', 'Everett', 'BEVERETT', '650.501.2876', '2005-03-03', 'SH_CLERK', 3900, NULL, 123, 50),
(194, 'Samuel', 'McCain', 'SMCCAIN', '650.501.3876', '2006-07-01', 'SH_CLERK', 3200, NULL, 123, 50),
(195, 'Vance', 'Jones', 'VJONES', '650.501.4876', '2007-03-17', 'SH_CLERK', 2800, NULL, 123, 50),
(196, 'Alana', 'Walsh', 'AWALSH', '650.507.9811', '2006-04-24', 'SH_CLERK', 3100, NULL, 124, 50),
(197, 'Kevin', 'Feeney', 'KFEENEY', '650.507.9822', '2006-05-23', 'SH_CLERK', 3000, NULL, 124, 50),
(198, 'Donald', 'OConnell', 'DOCONNEL', '650.507.9833', '2007-06-21', 'SH_CLERK', 2600, NULL, 124, 50),
(199, 'Douglas', 'Grant', 'DGRANT', '650.507.9844', '2008-01-13', 'SH_CLERK', 2600, NULL, 124, 50),
(200, 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', '2003-09-17', 'AD_ASST', 4400, NULL, 101, 10),
(201, 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', '2004-02-17', 'MK_MAN', 13000, NULL, 100, 20),
(202, 'Pat', 'Fay', 'PFAY', '603.123.6666', '2005-08-17', 'MK_REP', 6000, NULL, 201, 20),
(203, 'Susan', 'Mavris', 'SMAVRIS', '515.123.7777', '2002-06-07', 'HR_REP', 6500, NULL, 101, 40),
(204, 'Hermann', 'Baer', 'HBAER', '515.123.8888', '2002-06-07', 'PR_REP', 10000, NULL, 101, 70),
(205, 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', '2002-06-07', 'AC_MGR', 12008, NULL, 101, 110),
(206, 'William', 'Gietz', 'WGIETZ', '515.123.8181', '2002-06-07', 'AC_ACCOUNT', 8300, NULL, 205, 110),
(300, 'John', 'Doe', 'sdjhb', NULL, '2023-07-09', 'SA_MAN', NULL, NULL,  NULL,60);

DESCRIBE employees;
SELECT * FROM employees;
SELECT COUNT(*) AS No_of_rows_employees FROM employees;

---------------------------------------------Creating another TABLE DEPARTMENTS;-----------------------------------------------

CREATE TABLE DEPARTMENTS( 
    DEPARTMENT_ID INT PRIMARY KEY,
    DEPARTMENT_NAME VARCHAR(50),
    MANAGER_ID INT NULL,
    LOCATION_ID INT NOT NULL

);

------------------------------------INSERTING DATA INTO TABLE DEPARTMENTS-----------------------------------------

INSERT INTO DEPARTMENTS (DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID) VALUES
(10, 'Administration', 200, 1700),
(20, 'Marketing', 201, 1800),
(30, 'Purchasing', 114, 1700),
(40, 'Human Resources', 203, 2400),
(50, 'Shipping', 121, 1500),
(60, 'IT', 103, 1400),
(70, 'Public Relations', 204, 2700),
(80, 'Sales', 145, 2500),
(90, 'Executive', 100, 1700),
(100, 'Finance', 108, 1700),
(110, 'Accounting', 205, 1700),
(120, 'Treasury', NULL, 1700),
(130, 'Corporate Tax', NULL, 1700),
(140, 'Control And Credit', NULL, 1700),
(150, 'Shareholder Services', NULL, 1700),
(160, 'Benefits', NULL, 1700),
(170, 'Manufacturing', NULL, 1700),
(180, 'Construction', NULL, 1700),
(190, 'Contracting', NULL, 1700),
(200, 'Operations', NULL, 1700),
(210, 'IT Support', NULL, 1700),
(220, 'NOC', NULL, 1700),
(230, 'IT Helpdesk', NULL, 1700),
(240, 'Government Sales', NULL, 1700),
(250, 'Retail Sales', NULL, 1700),
(260, 'Recruiting', NULL, 1700),
(270, 'Payroll', NULL, 1700);

DESCRIBE departments;
SELECT * FROM departments;
SELECT COUNT(*) AS No_of_rows FROM departments;

SHOW TABLES;
SHOW DATABASES;

-----------------------------------------------------------BASIC QUERIES-------------------------------------------------------
#1 Write a query to display all the details from the employee table;

SELECT * FROM employees;

#2 Write a query to display the name of all the employees;

SELECT first_name from employees;

#3 Write a query to display the name and salary of all the employees;

SELECT first_name,salary FROM employees;

#4 Write a query to display the name and annual salary of all the employees;

SELECT first_name,salary*12 AS annual_salary FROM employees;

#5 Write a query to display the employee ID and department number of all the employees;

SELECT employee_id,department_id FROM employees;

#6 Write a query to display the employee name and hire date of all the employees;

SELECT first_name,hire_date FROM employees;

#7 Write a query to display the employee name and designation of all the employees;

SELECT first_name,job_id FROM employees;

-- #8 Write a query to display the name and half-term salary of all the employees;

SELECT first_name,salary*6 AS half_term_salary FROM employees;


-- #9 Write a query to display the name, salary, and also the salary with a 25% hike for all the employees;

SELECT first_name,salary,salary*1.25 AS salaryafterhike FROM employees;

-- #10 Write a query to display the employee name, salary, and salary with a deduction of 12% for all employees.;

SELECT first_name,salary ,salary*12 AS annual_salary ,(salary*12) * 0.88 AS salaryafterdeduction FROM employees;

SELECT first_name,salary ,(salary*12)-0.88 AS salaryafterdeduction FROM employees;


-- #11 Write a query to display only the different salaries given to employees;

SELECT distinct salary FROM employees;

-- #12 Write a query to display the different designations that are present in the table;

SELECT DISTINCT job_id FROM employees;

-- #13 Write a query to display different department numbers as well as salaries that are present in the table.;

SELECT DISTINCT department_id,salary FROM employees;

-- #14 Write a query to display all the details of the employee along with his annual salary;

SELECT DISTINCT first_name,salary*12 AS annual_salary FROM employees;


-------------------------------------------- ------------------ WHERE CLAUSE ----------------------------------------------------------

-- #1 Query to display all employee names only if they are working in Department 20;

SELECT first_name FROM employees
WHERE department_id = 20 ;

-- #2 Query to display employee name from employee table if they are working in Department 40;

SELECT first_name FROM employees
WHERE department_id=40;

-- #3  Query to display the salary of the employee whose name is Neena ;

SELECT first_name,salary FROM employees 
WHERE first_name = 'Neena';

-- 4 Query to display the annual salary of the employee whose name is Michael

SELECT first_name,salary*12 AS annual_salary FROM employees
WHERE first_name = 'Michael';

-- 18. Query to display details of employees earning salary more than Rs. 2000 per month 

SELECT * FROM employees
WHERE salary > 2000 ;

-- 17. Query to display details of the employees working as a salesman 
SELECT * FROM employees
WHERE job_id = 'SA_REP';

-- 10. Query to display name and salary along with annual salary if the annual salary is more than 12,000 

SELECT first_name,salary*12 AS annual_salary FROM employees
WHERE salary*12 > 12000 ;

-- 14. Query to display name and salary of employees who earn a commission of Rs. 0.3 

SELECT first_name,salary FROM employees
WHERE commission_pct = 0.3 ;


-- ---------------------------------------------Assignment on ALIAS:-----------------------------------------------------------

-- 6. Display employee name and salary with a deduction of 25% 
SELECT first_name,salary,salary*12 AS annual_salary,(salary*12)*0.75 AS sal_after_deduction FROM employees;
-- when working with deductions and increments in % ,if increment then variable*1.22{22% increment} | if decrement then variable*0.88{12% decrement} 

-- 8. Display employee name and annual salary with a deduction of 18% 
SELECT first_name,salary AS monthly_salary ,salary*12 AS annual_salary ,salary*12*0.82 AS sal_after_deduction FROM employees;

-- 9. Display total salary given to each employee (salary plus commission- 20) 
SELECT first_name,salary,(salary+20) AS salary_after_commission FROM employees;

-- 3. Display employee name, salary, and salary with a 10% hike 
SELECT first_name,salary,(salary*1.10) AS salary_after_10percent_hike FROM employees;

-- 2. Display employee name, job, and half term salary 
SELECT first_name,job_id,salary AS salary_per_month ,salary*6 AS half_term_salary FROM employees;

-- 4. Display all details of employees along with an annual bonus of Rs.2000 
SELECT *,salary,salary*12 AS annual_salary,(salary*12)+2000 AS salary_after_bonus FROM employees;

-- 7. Display employee name and salary with a monthly hike of Rs.50 
SELECT first_name,salary,(salary+50) AS salary_after_monthly_hike FROM employees;

-- 11. Display name, designation, along with a Rs.100 penalty in salary 
SELECT first_name,job_id AS job_designation,salary,(salary-100) AS salary_after_penalty FROM employees;


----------------------------------------------------------------Assignment on DISTINCT ---------------------------------------------------------

-- 5. Query to display salary, phone number, and email from the employee table 
SELECT DISTINCT salary,phone_number,email FROM employees;

-- 8. Query to display all the details of employees along with their annual salary 
SELECT DISTINCT * ,salary*12 AS annual_salary FROM employees;

-- 7. Query to display different department numbers from the employee table 
SELECT DISTINCT department_id FROM employees;

-- Write a query to display different department numbers as well as salaries that are present in the table.
SELECT DISTINCT department_id,salary FROM employees;

-------------------------------------------AND OR OPERATOR------------------------------------------------------------------

-- 1. Query to display the employee name if the employee is working in department number 20 and earning a salary more than 1500:
SELECT first_name AS name
FROM employees
WHERE department_id = 20 AND salary>1500;

-- 3. Query to display details of employees along with their annual salary if they are working in department number 60 as an IT Programmer and their annual salary is greater than 14,000:
SELECT first_name AS name
FROM employees
WHERE department_id = 60 AND job_id='IT_PROG' AND salary*12>14000;

-- 4. Query to display name and hire date of the employee working as a Sales Manager in department no. 20
SELECT first_name AS name ,hire_date 
FROM employees
WHERE job_id='SA_MAN' AND department_id =20;

-- 5. Query to display all details of the employee working in department no. 50 as Purchasing Clerk
SELECT * 
FROM employees
WHERE department_id=50 AND job_id='PU_CLERK';

-- 6. Query to display the name of the employee whose salary is less than 5000 and whose designation is a Stock Clerk
SELECT first_name
FROM employees
WHERE salary<5000 AND job_id='ST_CLERK';

-- 7. Query to display name, salary, annual salary, and department number for employees, provided that the department number is 60, they are earning more than 1000, and their annual salary exceeds 4000 
SELECT first_name,salary,salary*12 AS annual_salary
FROM employees
WHERE department_id=60 AND salary>1000 AND salary*12>4000;

-- 8. Query to display employee number and name of the employee working as an Accounting Manager in department number 110: 
SELECT employee_id,first_name 
FROM employees
WHERE job_id='AC_MGR' AND department_id=110;

-- 9. Query to display details of employees working in department number 80 or department number 50:
SELECT first_name
FROM employees
WHERE department_id=80 OR department_id=50;

-- 12. Query to display name, department number, and job of employees working as a Sales Representative in department number 80 or 50:
SELECT first_name,department_id,job_id
FROM employees
WHERE job_id='SA_REP' AND (department_id=80 OR department_id=50);

-- 14. Query to display name of employees working in departments 10, 20, 40, or 70:
SELECT first_name
FROM employees
WHERE department_id=10  OR department_id=20 OR department_id=40 OR department_id=70;

-- 11. Query to display details of employees working as Administration Vice President with a salary of 6000:
SELECT first_name
FROM employees
WHERE job_id='AD_VP' AND salary=6000;

-- 12. Query to display name, department number, and job of employees working as a Sales Representative in department number 80 or 50:
SELECT first_name,department_id,job_id
FROM employees
WHERE job_id='SA_REP' AND (department_id=80 OR department_id=50);

-- 15. Query to display details of employees with employee numbers 200, 205, 185, or 166:
SELECT *
FROM employees
WHERE employee_id=200 OR employee_id=205 OR employee_id=185 OR employee_id=166;

-- 17. Query to display names of employees hired after 2007 and before 2014:
SELECT first_name
FROM employees
WHERE hire_date>2007-02-20 AND 2014-02-20;

-- 18. Query to display details of employees earning more than Rs.1250 but less than Rs.4000:
SELECT first_name
FROM employees
WHERE salary>1250 AND salary<4000;

-- 19. Query to display name and annual salary for employees working as Purchasing Clerk or Marketing Manager in department 50 or 80:
SELECT first_name,salary*12 AS annual_salary
FROM employees
WHERE (job_id='PU_CLERK' OR job_id='MK_MAN') 
AND (department_id=50 OR department_id=80);

-- 20. Query to display names of employees hired after 2004 in department 50 or 80:
SELECT first_name,hire_date
FROM employees
WHERE hire_date>'2005-01-01' AND (department_id=50 OR department_id=80);


-- 21. Query to display all details along with annual salary where salary is between 1000 and 4000 and annual salary is more than 15000:
SELECT *,salary*12 AS annual_salary
FROM employees
WHERE salary>=1000 AND salary<=4000 AND salary*12>15000
ORDER BY annual_salary;


--------------------------------------------------------Assignment on IN & NOT IN Operator---------------------------------------------------
-- IN can be used only when u need to retrive mutiple data records from the same column not multiple columns in that case use OR OPERATOR
-- 1. Query to display employee names working in Department No. 10, 20, 30, 40, 50, 60, 70, 80, 90, 100:

SELECT first_name
FROM employees
WHERE department_id IN(10, 20, 30, 40, 50, 60, 70, 80, 90, 100);

-- 2. Query to display employee name and job of employees working as Administration President, Sales Manager, Purchasing Clerk, or Accounting manager:
SELECT first_name,job_id 
FROM employees
WHERE job_id IN('SA_MAN','PU_CLERK','AC_ACCOUNT','AD_PRES');

-- 3. Query to display details of employees working in department number 10 or 20 and hired after the year 2000:
SELECT first_name
FROM employees
WHERE department_id IN(10,20) AND hire_date>'2001-01-01';

-- 4. Query to display details of employees working as IT Programmer ,Stock Manager ,Marketing Manager , Public Relations Representative:
SELECT *
FROM employees
WHERE job_id IN('IT_PROG','ST_MAN','MK_MAN','PR_REP');

-- 5. Query to display employee names if they are working in department number 10 or 20 and as Marketing Representative or Human Resources Representative:
SELECT first_name
FROM employees
WHERE department_id IN(10,20) AND job_id IN ('MK_REP','HR_REP');

-------------------------------------------------------------NOT IN-------------------------------------------------------
-- 1. Query to display employee names excluding those working in department number 10 or 20:
-- the employees who are not working in department 10 or 20
SELECT first_name
FROM employees
WHERE department_id NOT IN(10,20);

-- 2. Query to display details of employees except those working as Purchasing Manager ,Purchasing Clerk 
SELECT *
FROM employees
WHERE job_id NOT IN ('PU_MAN','PU_CLERK');

-------------------------------------------Assignment on BETWEEN OPERATOR & NOT BETWEEN---------------------------------------------------

-- 1.	Display employee name and salary who are earning salary more than 1250 and less than 8000 
SELECT first_name
FROM employees
WHERE salary BETWEEN 1250 AND 8000;


-- 2.	Display employee name and salary if employees are earning salary between 1290 and 15000 (inclusive):
SELECT first_name,salary
FROM employees
WHERE salary BETWEEN 1290 AND 15000;

-- 3.	Display name of the employee hired after 1981 and before 1987:
SELECT first_name
FROM employees
WHERE hire_date BETWEEN '1981-01-01' AND '1987-01-01';

-- 4.	Display details of the employee earning more than 1250 but less than 3000:
SELECT *
FROM employees
WHERE salary BETWEEN 1250 AND 3000;

-- 5.	Display all the details along with the annual salary if salary is between 1000 and 4000 and annual salary is more than 15000:
SELECT first_name,salary*12 AS annual_salary
FROM employees
WHERE salary BETWEEN 1000 AND 4000 AND salary*12>15000;

-- 6.	Display employee name, salary, and commission if employees are earning commission between 0.1 and 0.5:
SELECT first_name,salary,commission_pct
FROM employees
WHERE commission_pct BETWEEN 0.1 AND 0.5;

------------------------------------------- NOT BETWEEN OPERATOR --------------------------------------------
-- 1. Display employee name and salary if employees are earning salary less than Rs.1250 and more than Rs.3000 (i.e., salary NOT BETWEEN 1250 AND 3000)
SELECT first_name
FROM employees
WHERE salary NOT BETWEEN 1250 AND 3000;

-- 2. Display employee name and commission if they are getting commission less than 0.5 or more than 0.9 (i.e., commission NOT BETWEEN 0.5 AND 0.9)
SELECT CONCAT(first_name ,' ', last_name) AS empname,commission_pct,salary
FROM employees
WHERE commission_pct NOT BETWEEN 0.5 AND 0.9;

-- 3. Display employee name and hire date who were hired in the year 1982
SELECT CONCAT(first_name,' ',last_name) AS employee_name,hire_date
FROM employees
WHERE hire_date BETWEEN '01-01-1982' AND '31-12-1982';

-- 4. Display employee name and hire date except those who were hired in the year 1980
SELECT first_name,hire_date
FROM employees
WHERE hire_date NOT BETWEEN '01-01-1980' AND '31-12-1980';

-- 5. Display employee name and hire date if they are working in department no.10 or 30 and hired in the year 1981 
SELECT first_name,hire_date
FROM employees
WHERE department_id IN (10,30) AND hire_date BETWEEN '01-01-1981' AND '31-12-1981';

-- 6. Display employee name and hire date who were hired after 1980 but before 1987 and working as Finance Manager ,Finance Accountant using NOT 
SELECT CONCAT(first_name,' ',last_name),hire_date
FROM employees
WHERE hire_date BETWEEN '01-01-1981' AND '01-01-1987' AND job_id IN ('FI_MGR,FI_ACCOUNT');

------------------------------ASSIGNMENT ON LIKE OPERATOR-------------------------------------------------------
-- 1. Query to display employee names that contain the character 'A' anywhere in their name:
--the % is sequence of characters 
SELECT CONCAT(first_name,' ',last_name) AS employee_name
FROM employees
WHERE first_name LIKE '%A%' OR last_name LIKE '%A%';

-- 2. Query to display employee names that start with the character 'A':
SELECT CONCAT(first_name,' ',last_name)
FROM employees
WHERE first_name LIKE 'A%';

-- 3. Query to Display employee name if the employee has character 'A' in the second place:
SELECT CONCAT(first_name,' ',last_name) AS employee_name
FROM employees
WHERE first_name LIKE '_A%';

-- 4. Query to Display details of employees having 'A' in the second last place:
SELECT CONCAT(first_name,' ',last_name)
FROM employees
WHERE last_name LIKE '%A_';

-- 5. Query to Display details of employees having 'S' in the last place:
SELECT CONCAT(first_name,' ',last_name)
FROM employees
WHERE last_name LIKE '%s';

-- 6. Query to Display details of employees having 'E' in the 4th place:
SELECT CONCAT(first_name,' ',last_name) AS employee_name 
FROM employees
WHERE first_name LIKE '___E%';

-- 7. Query to Display employee names having 'A' in the 1st place and 'S' in the last place:
SELECT CONCAT(first_name,' ',last_name) AS employee_name 
FROM employees
WHERE first_name LIKE 'A%' AND last_name LIKE '%s';

-- 8. Query to Display employee name and salary if they are earning a 3-digit salary:
SELECT CONCAT(first_name,' ',last_name) AS employee_name,salary
FROM employees
WHERE salary LIKE '__';

-- 9. Query to Display details of employees whose job contains the string 'man':
SELECT *
FROM employees
WHERE job_id LIKE '%man%';

-- 10. Query to Display details of employees whose name starts with 'A', has 'D' in the second place, and ends with 'S':
SELECT *
FROM employees
WHERE first_name LIKE 'AD%s';


----------------------------------------ASSIGNMENT ON NOT LIKE OPERATOR-------------------------------------------------------
-- 1. Query to Display employee names except those who have the character 'A' in their name:
SELECT CONCAT(first_name,' ',last_name) AS employee_name
FROM employees
WHERE first_name NOT LIKE '%A%'OR last_name NOT LIKE '%A%';

-- 2. Query to Display employee name and hire date, except those hired in the year 1981:
SELECT CONCAT(first_name,' ',last_name) AS employee_name,hire_date 
FROM employees
WHERE hire_date NOT LIKE '01-01-1981';

-- 3. Query to Display employee names except those whose name ends with 'S':
SELECT CONCAT(first_name,' ',last_name) AS employee_name
FROM employees
WHERE last_name NOT LIKE '%s';

--------------------------------------ASSIGNMENT ON MULTIROW  FUNCTIONS----------------------------------------------
-- 1. Query to Display the maximum salary from the Employees table:
SELECT MAX(salary) AS maximum_salary
FROM employees;

-- 2. Query to Display the minimum salary from the Employees table:
SELECT MIN(salary) AS maximum_salary
FROM employees;

-- 3. Query to Display the total salary from the Employees table:
SELECT SUM(salary) AS total_salary
FROM employees;

-- 4. Query to Display the average salary from the Employees table:
SELECT AVG(salary) AS total_salary
FROM employees;

-- 5. Query to Display the maximum salary in Department No. 20:
SELECT SUM(salary) AS total_salary
FROM employees;

-- 6. Query to Display the number of employees in the Employees table:
SELECT SUM(salary) AS total_salary
FROM employees;

-- 7. Query to Number of employees getting salary less than 2000 in department number 10:
SELECT COUNT(*)
FROM employees
WHERE salary<2000 AND department_id=10;

-- 8. Query to Total salary needed to pay employees working as a PU Clerk:
SELECT SUM(salary) AS total_salary_to_pay
FROM employees
WHERE job_id='PU_Clerk';

-- 9. Query to Number of employees having 'A' as the first character of their name:
SELECT COUNT(*)
FROM employees
WHERE first_name LIKE 'A%';

-- 10. Query to Number of employees working as PU_Clerk or Salesman:
SELECT COUNT(*)
FROM employees
WHERE job_id IN('PU_CLERK','SA_MAN');

-- 11. Query to Query to display total salary needed to pay employees hired in the month of March:
SELECT SUM(salary) AS total_salary
FROM employees
WHERE hire_date LIKE '__-03-____';

-- 12. Query to display number of employees getting commission in Department No. 30:
SELECT COUNT(*) AS employees_with_commission
FROM employees
WHERE commission_pct IS NOT NULL AND department_id=30;

-- 13. Query to display average salary, total salary, number of employees, and maximum salary of Purchasing Manager:
SELECT AVG(salary) AS average_salary,SUM(salary) AS total_salary,COUNT(*) AS no_of_employees,MAX(salary) AS maximum_salary
FROM employees
WHERE job_id='PU_MAN';

-- 14. Query to display number of employees having the letter 'A' in their names:
SELECT COUNT(*) AS no_of_employees
FROM employees
WHERE first_name LIKE '%A%' OR last_name LIKE '%a%';

-- 15. Query to display number of employees and total salary for employees who have two consecutive 'L's in their names:
SELECT COUNT(*) AS no_of_employees,SUM(salary) AS total_salary
FROM employees
WHERE first_name LIKE '%ll%' OR last_name LIKE '%ll%';

-- 16. Query to display number of distinct departments present in the employee table:
SELECT COUNT(*) AS no_of_departments
FROM employees
WHERE DISTINCT(department_id);

SELECT COUNT(DISTINCT(department_id)) AS no_of_departments
FROM employees;

-- 17. Query to display the number of employees working in department number 10:
SELECT COUNT(*)
FROM employees
WHERE department_id=10;

-- 18. Query to display the number of employees working in each department:
SELECT COUNT(*) AS no_of_employees,department_id
FROM employees
GROUP BY department_id;


----------------------------------------------ASSIGNMENT ON GROUP BY------------------------------------------------------------------A
-- 1. Query to display number of employees working in each department except 'Stock Manager':
SELECT COUNT(*) AS no_of_employees,department_id
FROM employees
WHERE job_id NOT IN ('ST_MAN')
GROUP BY department_id;

-- 2. Query to display total salary needed to pay all the employees in each job:
SELECT SUM(salary) AS total_salary,job_id AS job_role 
FROM employees
GROUP BY job_id;

-- 3. Query to display number of employees working as 'Sales Manager' in each department:
SELECT COUNT(*) AS no_of_employees,department_id
FROM employees
WHERE job_id='SA_MAN'
GROUP BY department_id;

-- 4. Query to display average salary in each department excluding department number 50:
SELECT AVG(salary) AS Average_salary,department_id 
FROM employees
WHERE department_id NOT IN(50)
GROUP BY department_id;

-- 5. Query to display number of employees having character 'S' in last  place in their names in each job:
SELECT COUNT(*) AS no_of_employees_having_s,job_id AS job_role
FROM employees
WHERE last_name LIKE '%S' --what if the name is the last character is lower case
GROUP BY job_id;

-- 6. Query: to display Number of employees and average salary (salary > 2000) in each department
SELECT COUNT(*) AS no_of_employees,AVG(salary) AS average_salary
FROM employees 
WHERE salary>2000
GROUP BY department_id;

-- 7. Query: to display Number of employees, max salary, min salary for 'Administration Assistant' in each department
SELECT COUNT(*) AS no_of_employees,MAX(salary) AS maximum_salary,MIN(salary) AS minimum_salary,department_id
FROM employees
WHERE job_id='AD_ASST'
GROUP BY department_id;

-- 8. Query: to display Number of employees and their maximum salary in each department
SELECT COUNT(*) AS no_of_employees,MAX(salary) AS maximum_salary,department_id
FROM employees 
GROUP BY department_id;

-- 9. Query: to display Minimum salary and average salary for employees in each department
SELECT MIN(salary) AS minimum_salary,AVG(salary) AS average_salary,department_id
FROM employees 
GROUP BY department_id;

-- 10. Query: to display Number of times each salary amount appears in the employee table
SELECT COUNT(*) AS no_of_times,salary
FROM employees
GROUP BY salary;

----------------------------------------------------Assignment on HAVING CLAUSE---------------------------------------------------

-- 1. Write a query to Display number of employees working in each department having at least two employees in each department.
SELECT COUNT(*) AS no_of_employees,department_id
FROM employees
GROUP BY department_id
HAVING COUNT(*)>=2;

-- 2. . Write a query to Display department number and number of employees working in each department if there are two purchasing clerks in each department.
SELECT COUNT(*) AS no_of_employees,department_id
FROM employees
WHERE job_id='PU_CLERK'
GROUP BY department_id
HAVING COUNT(*)=2;

-- 3. Write a query to Display total salary from employee table in each job ID if the maximum salary exceeds 2800.
SELECT SUM(salary) AS total_salary,job_id AS job_role
FROM employees
GROUP BY job_id
HAVING MAX(salary)>2800;

-- 4. write a query to Display department ID, maximum salary, minimum salary if employees are working as a 'Salesman' or 'Administration Assistant' in each department having at least three employees in each department.
SELECT MIN(salary) AS minimum_salary,MAX(salary) AS maximum_salary,department_id
FROM employees
WHERE job_id IN ('SA_MAN','AD_ASST')
GROUP BY department_id
HAVING COUNT(*)>3;

-- 5. Write a query to Display department number and total salary needed to pay all employees in each department if there are at least 4 employees in each department.
SELECT COUNT(*) ,SUM(salary) AS total_salary,department_id
FROM employees
GROUP BY department_id 
HAVING COUNT(*)>=4;

-- 6 .Write a query to Display number of employees earning salary more than 1200 in each job and total salary needed to pay employees of each job must exceed 3800.
SELECT COUNT(*),job_id AS job_role
FROM employees
WHERE salary>1200 
GROUP BY job_id
HAVING SUM(salary)>3800;

-- 7. Write a query to Display department number and number of employees working only if there are 2 employees working in each department as Stock manager.
SELECT COUNT(*),department_id
FROM employees
WHERE job_id='ST_MAN'
GROUP BY department_id
HAVING COUNT(*)=2;

-- 8.Write a query to  Display job and maximum salary of employees in each job if the maximum salary exceeds 2600.
SELECT job_id AS job_role,MAX(salary)
FROM employees
GROUP BY job_id
HAVING MAX(salary) > 2600;

-- 9.Write a query to  Display salaries which are repeated in employee table.
SELECT COUNT(*),salary
FROM employees
GROUP BY salary
HAVING COUNT(*)>1;

-- 10. Write a query to Display hire dates which are duplicated in employee table.
SELECT COUNT(*),hire_date
FROM employees
GROUP BY hire_date
HAVING COUNT(*)>1;

-- 11. Write  a query to Display average salary of each department if average salary is less than 30000.
SELECT AVG(salary) AS average_salary,department_id
FROM employees
GROUP BY department_id
HAVING AVG(salary)<30000;

-- 12.Write a query to  Display department number if there are at least 3 employees in each whose name has character A or S.
SELECT department_id,COUNT(*)
FROM employees
WHERE first_name LIKE '%A%' OR first_name LIKE '%S%'
GROUP BY department_id 
HAVING COUNT(*)>=3;

-- 13. Write a query to Display minimum and maximum salary of each job if minimum salary is more than 1000 and maximum salary is less than 50000.
SELECT MAX(salary) AS maximum_salary,MIN(salary) AS minimum_salary,job_id AS job_role
FROM employees
GROUP BY job_id
HAVING MIN(salary)>1000 AND MAX(salary)<50000;

---------------------------------------Assignment on ORDER BY ------------------------------------------------

-- 1. Write a query to Display first name in ascending order:
SELECT first_name
FROM employees                 --sorts by alphabetical order----------------
ORDER BY first_name;

-- 2. Write a query to Display salary in descending order:
SELECT salary
FROM employees
ORDER BY salary DESC;

-- 3. Write a query to Display salary in ascending order:
SELECT salary
FROM employees
ORDER BY salary;

-- 4. Write a query to Display first name in descending order:
SELECT first_name
FROM employees                 --sorts by alphabetical order----------------
ORDER BY first_name DESC;

-- 5. Write a query to Display department number and salary in ascending order:
SELECT department_id,salary
FROM employees
ORDER BY salary,department_id;

----------------------------------------Assignment on SUB QUERIES-------------------------------------------------
-- the result of the sub query will always be a 1 value 
-- 1. write a query to display Employees earning more than Nancy
SELECT first_name
FROM employees
WHERE salary >
(SELECT salary
FROM employees
WHERE first_name='nancy');

-- 2 write a query to display Employees earning more than Bruce
SELECT first_name
FROM employees
WHERE salary >
(SELECT salary
FROM employees
WHERE first_name='Bruce');

-- 3. write a query to display Name and salary of employees earning less than Neena
SELECT first_name
FROM employees
WHERE salary <
(SELECT salary
FROM employees
WHERE first_name='neena');

-- 4. write a query to display Name and department number of employees working in the same department as Valli
SELECT first_name,department_id 
FROM employees
WHERE department_id = 
(SELECT department_id
FROM employees
WHERE first_name='Valli');

-- 5. write a query to display Employee name and salary of all employees earning more than Diana but less than Nancy
SELECT CONCAT(first_name,' ',last_name),salary 
FROM employees
WHERE salary>
(SELECT salary 
FROM employees
WHERE first_name='Diana') AND salary <
(SELECT salary
FROM employees
WHERE first_name='Nancy');

-- 6. write a query to display All details of employees in department 20 and same job as Neena job role
SELECT *
FROM employees
WHERE department_id=20 AND job_id =
(SELECT job_id
FROM employees
WHERE first_name='Neena');

-- 7. write a query to display Name and job ID of employees working in same job as Donald
SELECT first_name,job_id AS job_role
FROM employees
WHERE job_id = 
(SELECT job_id AS job_role
FROM employees
WHERE first_name='Donald');

-- 8. write a query to display Employee ID, name, and annual salary if annual salary > Shelli or shelley
SELECT employee_id,first_name,salary*12 AS annual_salary 
FROM employees
WHERE salary*12 >(SELECT salary*12 AS annual_salary
FROM employees
WHERE last_name='Shelley' OR first_name='Shelley'); 

SELECT * FROM employees;

-- 9. write a query to display Name and hire date of employees hired before 'Adam'
SELECT first_name,hire_date
FROM employees
WHERE hire_date <
(SELECT hire_date
FROM employees
WHERE first_name='Adam');

-- 10. write a query to display Name and hire date of employees hired after the Sales Representative
-- we have to use ANY/ALL  or MIN(hire_date)

-- 11. Write a query to display First name and salary of employees earning less than employee with ID 107
SELECT first_name,salary 
FROM employees
WHERE salary < 
(SELECT salary
FROM employees
WHERE employee_id=107);

-- 12. . Write a query to display All details of employees hired before Sigal
SELECT *
FROM employees
WHERE hire_date <
(SELECT hire_date 
FROM employees
WHERE first_name='Sigal');

-- 13. . Write a query to display First name and employee ID of employees earning more than Luis
SELECT first_name,employee_id 
FROM employees
WHERE salary>(SELECT salary
FROM employees
WHERE first_name='Luis');

-- 14. . Write a query to display Number of employees hired after Matthew
SELECT COUNT(*) 
FROM employees
WHERE hire_date > 
(SELECT hire_date
FROM employees
WHERE first_name='Matthew');

-- 15. . Write a query to display Total salary of employees in the same department as Ismael
SELECT SUM(salary) AS total_salary FROM employees
WHERE department_id =
(SELECT department_id
FROM employees                 ----what if we have ismael 2 names? ----         
WHERE first_name='Ismael');

-- 16. . Write a query to display All details of Sales Managers in the same department as 'Christopher'
SELECT * 
FROM employees
WHERE job_id='SA_MAN' AND department_id =        -- if there is only one christopher then we can use = ,if there are 2 christopher with same name the that will throw error then can we use IN?--
                                            
                                           -- we have to use ANY/ALL  or MIN(hire_date) 
(SELECT department_id                       
FROM employees                          
WHERE first_name='Christopher');


-- 17. . WRITE  a query to display Name and hire date of employees hired after 2017 and before 'Austin'
SELECT first_name,hire_date 
FROM employees
WHERE hire_date>'2017-12-31' AND hire_date <
(SELECT hire_date
FROM employees
WHERE first_name='Austin' OR last_name='Austin'); 

-- 18. . WRITE  a query to display Name, salary, and annual salary for employees earning less than Stephen OR more than 3500
SELECT first_name,salary,salary*12 AS annual_salary 
FROM employees
WHERE salary>3500 OR salary<
(SELECT salary                      -- ask mam doubt that what happens if we use salary*12 in sub query how then the execution works 
FROM employees
WHERE first_name='Stephen');

-- 19. WRITE  a query to display All details of employees who earn more than Jean but less than Neena
SELECT * 
FROM employees
WHERE salary >
(SELECT salary
FROM employees
WHERE first_name='Jean') AND salary <  -- we have to use limit 1 in sub queries
(SELECT salary
FROM employees
WHERE first_name='Neena');

-- 20. WRITE  a query to display Name of employees whose names having  'A' and work in the same department as Den
SELECT first_name FROM employees
WHERE first_name LIKE '%A%' AND department_id=
(SELECT department_id
FROM employees
WHERE first_name='Den');                            -- what if there are 2 ppl with name Den

-- 21. WRITE  a query to display Name and commission of employees who earn commission and works in the same job as 'Oliver'
SELECT first_name,commission_pct
FROM employees
WHERE commission_pct IS NOT NULL AND job_id =
(SELECT job_id
FROM employees
WHERE first_name='Oliver');

-- 22. WRITE  a query to display All details of employees working as Purchasing Clerk in the same department as Guy
SELECT *
FROM employees
WHERE job_id='PU_CLERK' AND department_id =
(SELECT department_id
FROM employees
WHERE first_name='Guy');

-- 23. . WRITE  a query to display Employee name, salary, and designation (job id) of employees whose annual salary is more than 'Anthony'and less then 'Gerald'
SELECT first_name,salary*12 AS annual_salary,salary,job_id 
FROM employees
WHERE salary*12 > 
(SELECT salary*12 AS annual_salary_of_anthony  -- annual_salary_of_anthony - 36000
FROM employees
WHERE first_name='Anthony') 
AND salary*12 <
(SELECT salary*12 AS annual_salary_of_gerald   -- annual_salary_of_gerald -132000
FROM employees
WHERE first_name='Gerald');

DESCRIBE employees;
DESCRIBE departments;
SELECT * FROM employees;
SELECT * FROM departments;

-----------------------------------------SUB QUERIES using another table CASE 2 --------------------------------------------------------

-- 1. Write a query to display department name and location ID of the employee whose name is Alexander
SELECT department_name,location_id
FROM departments
WHERE department_id =
(SELECT department_id  
FROM employees
WHERE first_name='Alexander');

-- 2. Write a query to display first name of the employees working in the Shipping department
SELECT first_name 
FROM employees
WHERE department_id=
(SELECT department_id 
FROM departments
WHERE department_name='Shipping');


-- 3. Write a query to display first name of the employees earning more than 'Amit' in Sales department
SELECT first_name 
FROM employees
WHERE department_id=
(SELECT department_id
FROM departments
WHERE department_name='Sales') 
AND salary >
(SELECT salary
FROM employees
WHERE first_name='Amit');

-- 4. Write a query to display all the details of employees working as Sales Manager in location ID 2500  
SELECT * FROM employees 
WHERE department_id=                   -- use IN bcz there might be mutliple ppl with loc_id=2500
(SELECT department_id FROM departments
WHERE location_id=2500) AND job_id='SA_MAN';


-- 5. Write a query to display DEPARTMENTname of employees whose name contains the character 'y'
SELECT department_name FROM departments
WHERE department_id IN 
(SELECT department_id FROM employees
WHERE first_name LIKE '%y%' OR last_name LIKE '%y%');

-- 6. Write a query to display department name of Christopher
SELECT department_name
FROM departments
WHERE department_id=
(SELECT department_id
FROM employees
WHERE first_name='Christopher');

-- 7. Write a query to display employee name and salary of the employees earning more than 'Valli' in the department Finance
SELECT first_name,salary 
FROM employees
WHERE department_id=
(SELECT department_id 
FROM departments
WHERE department_name='Finance') AND salary>
(SELECT salary
FROM employees
WHERE first_name='Valli');

-- 8. Write a query to display department name of the employee whose name is 'Ismael'
SELECT department_name
FROM departments
WHERE department_id=
(SELECT department_id
FROM employees
WHERE first_name='Ismael');

-- 9. Write a query to display department name and location ID of the employee whose name is Amit
SELECT department_name,location_id
FROM departments
WHERE department_id=
(SELECT department_id
FROM employees 
WHERE first_name='Amit');

-- 10. Write a query to display location ID of the employee whose employee number is 101
SELECT location_id
FROM departments
WHERE department_id =
(SELECT department_id
FROM employees
WHERE employee_id=101);

-- 11. Write a query to display department name, location ID, and department number of the employee whose name having 'A'
SELECT department_name,location_id,department_id
FROM departments
WHERE department_id IN 
(SELECT department_id 
FROM employees
WHERE first_name LIKE '%A%' OR last_name LIKE '%A%'); 

-- 12. Write a query to display department name of the employee whose designation is Marketing Manager
SELECT department_name
FROM departments
WHERE department_id IN 
(SELECT department_id
FROM employees
WHERE job_id='MK_MAN');

-- 13. Write a query to display name of the employee whose designation is Accounting mANAGER
SELECT first_name
FROM employees
WHERE job_id='AC_MGR';

-- 14. Write a query to display employee name and salary of the employees who are working in the location ID 1700
SELECT first_name,salary
FROM employees
WHERE department_id IN 
(SELECT department_id
FROM departments
WHERE location_id=1700);

-- 15. Write a query to display details of the employees working in IT
SELECT *
FROM employees
WHERE department_id IN 
(SELECT department_id
FROM departments
WHERE department_name='IT');

-- 16. Write a query to display details of the employee along with the annual salary if the employees are working in location ID 2400
SELECT *,salary*12 AS annual_salary
FROM employees
WHERE department_id=
(SELECT department_id
FROM departments
WHERE location_id=2400);

-- 17. Write a query to display name of the employees working in department Accounting
SELECT CONCAT(first_name,' ',last_name) AS full_name
FROM employees
WHERE department_id IN
(SELECT department_id
FROM departments
WHERE department_name='Accounting');

-- 18. Write a query to display details of the employee working as a Salesman in the department Sales
SELECT *
FROM employees
WHERE department_id IN 
(SELECT department_id
FROM departments
WHERE department_name='Sales') AND job_id='SA_MAN';

-- 19. Write a query to display name, salary, job ID, hire date of the employees working in IT department
SELECT CONCAT(first_name,' ',last_name) AS full_name,salary,hire_date,job_id AS job_role
FROM employees
WHERE department_id IN 
(SELECT department_id
FROM departments
WHERE department_name='IT');

-- 20. Write a query to display all the employees whose department name ends with 'g'
SELECT *
FROM employees
WHERE department_id IN 
(SELECT department_id
FROM departments 
WHERE department_name LIKE '%g');

SELECT department_name FROM departments
WHERE department_name LIKE '%g';

-- 21. Write a query to display department name and location ID of the employees whose salary is 10,000
SELECT department_name,location_id
FROM departments
WHERE department_id IN 
(SELECT department_id
FROM employees
WHERE salary=10000);

-- 22. Write a query to display department name of the employees who earned commission
SELECT department_name
FROM departments
WHERE department_id IN 
(SELECT department_id
FROM employees
WHERE commission_pct IS NOT NULL);

-- 23. Write a query to display location ID of the employees if they earned commission in the department 80
SELECT location_id
FROM departments
WHERE department_id IN 
(SELECT department_id
FROM employees
WHERE commission_pct IS NOT NULL 
AND department_id=80);

-- 24. Write a query to display employee name who is getting the maximum salary
SELECT CONCAT(first_name,' ',last_name) AS full_name
FROM employees 
WHERE salary = 
(SELECT MAX(salary) AS maximum_salary
FROM employees);

-- 25. Write a query to display name of the employee earning minimum salary
SELECT CONCAT(first_name,' ',last_name) AS full_name
FROM employees 
WHERE salary = 
(SELECT MIN(salary) AS minimum_salary
FROM employees); 

-- 26. Write a query to display name and hire date of the employees hired at the last
SELECT CONCAT(first_name,' ',last_name) AS full_name,hire_date
FROM employees
WHERE hire_date = 
(SELECT MAX(hire_date)
FROM employees);

-- 27. Write a query to display employee name and hire date of the employee hired before all the employees
SELECT CONCAT(first_name,' ',last_name) AS full_name,hire_date
FROM employees
WHERE hire_date = 
(SELECT MIN(hire_date)
FROM employees);

-- 28. Write a query to display employee name and commission of the employee who earns minimum commission
SELECT CONCAT(first_name,' ',last_name) AS full_name,commission_pct
FROM employees
WHERE commission_pct =
(SELECT MIN(commission_pct) AS minimum_commission
FROM employees);
 
-- 29. Write a query to display employee name, salary, and commission of the employee earning maximum commission
SELECT CONCAT(first_name,' ',last_name) AS full_name,commission_pct
FROM employees
WHERE commission_pct =
(SELECT MAX(commission_pct) AS maximum_commission
FROM employees);


-- --------------------------------------------Case 3. Nested subquery ---------------------
--  A subquery written inside another subquery is called as nested subquery. Here we can nest about 255.

-- 1. Write a query to display the second maximum salary
SELECT MAX(salary)
FROM employees
WHERE salary
<(SELECT MAX(salary)
FROM employees);

-- 2. Write a query to display the third maximum salary
SELECT salary,sl_no                     -- displaying the salary,sl_no
FROM (
    SELECT rownum AS sl_no,salary       -- assigning rownum to the ordered Salary column 
    FROM 
        (SELECT salary                  -- result will be ordered Salary column 
        FROM employees
        ORDER BY salary DESC)
)
WHERE sl_no=3;                          -- display where rownum=3

-- 2(a) Write a query to display the third maximum salary using nested subquery

SELECT MAX(salary) 
FROM employees
WHERE salary <
    (
        SELECT MAX(salary) 
        FROM employees
        WHERE salary <
        (
            SELECT MAX(salary)
            FROM employees
    )   )
;

SELECT distinct(salary) FROM employees ORDER BY salary DESC;

-- -- 2(b) Write a query to display the third maximum salary using ROW_NUMBER() Window Function

SELECT salary                                        -- displaying salary with where cond'n
FROM(
    SELECT ROW_NUMBER()                              -- assigning row number over the sorted salary column
    OVER(ORDER BY salary DESC) AS row_num,salary     -- sorted salary column from emp table
    FROM employees                                                              -- what if there are 2 same salaries
    ) AS ranked_table
WHERE row_num=3;                                     -- displaying the salary where row_num is 3     

-- 3. Write a query to display the second minimum salary
-- 3.(a) Write a query to display the second minimum salary using rownum keyword

SELECT salary 
FROM 
    (
     SELECT rownum AS sl_no,salary FROM
                    (
                        SELECT salary FROM employees ORDER BY salary
                    )
    )
WHERE sl_no=2;

-- 4. Write a query to display employee details who is getting 3rd maximum salary





-- 5. Write a query to display employee's 5th maximum salary

-- ⸻

-- 6. Write a query to display employees id earning 2nd maximum salary


-- 7. Write a query to display department name of an employee earning second maximum salary

-- ⸻

-- 8. Write a query to display details of the employee who hired second



-- 9. Write a query to display name of the employee hired before the Last employee

-- 10. Write a query to display location ID of the employee who was hired first


-- ⸻

-- 11. Write a query to display details of the employee earning 7th minimum salary

-- 12. Write a query to display department name of the employee getting 2nd maximum salary

-- ⸻

-- 13. Write a query to display name of the employee earning 2nd maximum salary


-- 14. Write a query to display name of the employee earning minimum salary

-- 15. Write a query to display name, salary, and commission of the employee earning maximum commission


-- 16. Write a query to display details of the employees who has greatest employee ID


-- 17. Write a query to display details of the employee having the least hire date


--

-- 18. Write a query to display details of the employees earning least annual salary

-- 19. Write a query to display name and annual salary of the employees if their annual salary is more than all the salesmen

-- row_id and row_num are keywords -pseudocloumns which we cant see wont be visible to us 
-- row_id id the 18 digit address for each record 
-- <,<=,!= 
-- we can only fetch first records not from middle bcz it will as rows if the first condition is true then it goes to next record we cant retrive 10th max salary
-- row_num will be written as AS slno then the dynamic functionality of row_num will be static like paste as values in excel 

---------------------------------------------------Assignment on row num-------------------------------------------


-- 1.(a)Write a query to display 3rd maximum salary using rownum
SELECT salary 
FROM 
    (
     SELECT rownum as sl_no,salary
     FROM 
     (
        SELECT salary FROM employees ORDER BY salary DESC
     )
    )
WHERE sl_no=3;

-- 1.(b)Write a query to display 3rd maximum salary using ROW_NUMBER() window function
SELECT salary AS 3rd_max_salary 
            FROM 
                (
                    SELECT ROW_NUMBER()
                    OVER( ORDER BY salary DESC) AS rownum,salary
                    FROM employees 

                ) AS rownum_assigned_table
WHERE rownum=3;

-- 2. Query to display employee name and salary from the 7th record:
-- 2(a) Query to display employee name and salary from the 7th record using limit and offset:
SELECT first_name,salary
FROM employees
ORDER BY emp_id  
LIMIT 7 OFFSET 6;

-- 2(b) Query to display employee name and salary from the 7th record using rownum:
-- no need to order by when using rownum bcz rownum is pseudocolumn,we are just displaying the hidden pseudocolumn
SELECT first_name,salary
    FROM
    ( 
        SELECT rownum AS sl_no 
        FROM 
            (
              SELECT * FROM employees
            )
    )
WHERE sl_no=7;

-- 2(c) Query to display employee name and salary from the 7th record using ROW_NUMBER():
-- As ROW_NUMBER() is a window function we are assigning a separate column using built in func not as rownum 
-- we have to use order by when using ROW_NUMBER() builtin function 

SELECT first_name,salary 
FROM( 
     SELECT ROW_NUMBER() OVER(ORDER BY employee_id) AS rownum,first_name,salary
     FROM employees
    ) AS assigned_table
WHERE rownum=7;

-- 3. Query to display employee name and hire_Date of records at 1st, 3rd, 5th, and 8th positions:
-- 3(a) Query to display employee name and hire_Date of records at 1st, 3rd, 5th, and 8th positions using rownum :
SELECT first_name,hire_date,sl_no
FROM
(SELECT rownum AS sl_no
FROM
(SELECT * FROM employees))
WHERE sl_no IN (1,3,5,8);

-- 3(b) Query to display employee name and hire_Date of records at 1st, 3rd, 5th, and 8th positions using ROW_NUMBER() Function :
SELECT first_name,hire_date
FROM(
     SELECT ROW_NUMBER() OVER(ORDER BY employee_id) AS rownum,first_name,hire_date 
     FROM employees 
    )AS rownum_assigned_table                       -- in MYSQL every subquery should have a derived alias table name 
WHERE rownum IN (1,3,5,8);

-- 4.(a) Query to display the last 3 records using rownum
SELECT * FROM
            (
             SELECT rownum AS sl_no,* FROM
              (
                SELECT * FROM employees
                ORDER BY employee_id
              )
               
            )
WHERE sl_no <3;

-- 4.(b) Query to display the last 3 records using ROW_NUMBER()
SELECT *
    FROM
        (
         SELECT ROW_NUMBER() OVER(ORDER BY employee_id) AS rownum,* FROM employees
        ) AS rownum_assigned_table
WHERE rownum<=3;

-- 5.(a) Query to display 8th minimum salary using ROW_NUMBER()
SELECT salary AS 8th_minimum_salary
    FROM 
        ( SELECT ROW_NUMBER() OVER(ORDER BY employee_id) AS rownum,salary
          FROM employees
        ) AS rownum_assigned_table
WHERE rownum=8;

-- 5.(b) Query to display 8th minimum salary using rownum
SELECT salary AS 8th_minimum_salary
    (
        SELECT rownum AS sl_no,salary 
        FROM 
            (
             SELECT salary FROM employees
            )
    )
WHERE sl_no = 8;

-- 6.(a) Query to display top 3 minimum salaries using ROW_NUMBER()
SELECT salary AS top3_minimum_salary
    FROM 
        ( SELECT ROW_NUMBER() OVER(ORDER BY salary) AS rownum,salary
          FROM employees
        ) AS rownum_assigned_table
WHERE rownum<=3;

-- 6.(b) Query to display top 3 minimum salaries using rownum
SELECT salary AS top3_minimum_salary
    (
        SELECT rownum AS sl_no,salary 
        FROM 
            (
             SELECT salary FROM employees
            )
    )
WHERE sl_no <= 8;

-- 7.(a) Query to display name of the employee getting 4th maximum salary using rownum
SELECT salary AS 4th_maximum_salary
    (
        SELECT rownum AS sl_no,salary 
        FROM 
            (
             SELECT salary FROM employees ORDER BY salary DESC
            )
    )
WHERE sl_no <= 8;

-- 7.(b) Query to display name of the employee getting 4th maximum salary using ROW_NUMBER()
SELECT salary AS 4th_maximum_salary
    FROM 
        ( SELECT ROW_NUMBER() OVER(ORDER BY salary DESC) AS rownum,salary
          FROM employees
        ) AS rownum_assigned_table
WHERE rownum = 4;

-- 8.(a) Query to display department name of employees getting 7th minimum salary using rownum keyword
SELECT department_name 
        FROM departments
        WHERE department_id =
        (
            SELECT department_id
                FROM(
                        SELECT salary AS 7th_minimum_salary
                        FROM
                            (
                                SELECT rownum AS sl_no,salary 
                                FROM 
                                (
                                 SELECT salary FROM employees ORDER BY salary 
                                )
                    
                            )
                        WHERE sl_no = 7

                    )
        )

;

-- 8.(b) Query to display department name of employees getting 7th minimum salary using ROW_NUMBER() FUNC 
SELECT department_name AS department_name_of_employees_getting_7th_minimum_salary
        FROM departments
        WHERE department_id = 
        ( 
            SELECT department_id
                FROM
                    ( 
                     SELECT salary AS 7th_minimum_salary
                        FROM 
                            ( SELECT ROW_NUMBER() OVER(ORDER BY salary) AS rownum,salary
                            FROM employees
                            ) AS rownum_assigned_table
                     WHERE rownum = 7
                    ) AS t2_table
        )
;

--(9) identify the 17th minimum salary using rownum 
SELECT salary 
FROM                           -- this select will select from original table where sl=17
((SELECT rownum AS slno 
FROM                           -- outpiut of this is serial num will be assigned to the sorted salary column/table
(SELECT DISTINCT(salary)  
FROM employees                 -- output of this query is sorted salary columns with unique salaries
ORDER BY salary))
WHERE slno=17;    

SELECT * FROM employees;

--- off set 
--- it will skip the rows after ordering it so >order by >offset >limit 
-- distinct cant be retrieved beside any cloumn >it can only be used beside the select clause
-- fetch is dependent on limit 


---------------------------------------------------------------------JOINS------------------------------------------------------
--1) cartesian/CROSS JOIN
--2) JOIN/INNER JOIN
--3) LEFT OUTER JOIN 
--4) RIGHT OUTER JOIN
--5) NATURAL JOIN 
--6) SELF JOIN

--1) cartesian/cross join -multiplication--doesnt need to be there a similar column no connection is required
-- this just multiplies all the columns with each columns
-- 

SELECT employees.first_name,departments.department_name 
FROM employees,departments;




--------------------------------------------INNER JOIN -----------------------------------------------
-- Q1. Write a query to display employee name, salary, and department name of all the employees
SELECT emp.first_name,emp.salary,dep.department_name
FROM employees emp
INNER JOIN departments dep
ON emp.department_id = dep.department_id;

-- Q2. Write a query to display employee name, department number, department name, and job ID of all the employees
SELECT emp.first_name,emp.department_id,dep.department_name,emp.job_id 
FROM employees emp
INNER JOIN departments dep
ON emp.department_id=dep.department_id;

-- Q3. Write a query to display employee name and department name if employees are working in department number 20
SELECT emp.first_name,dep.department_name
FROM employees emp
INNER JOIN departments dep
ON emp.department_id=dep.department_id              -- we cant use ON and WHERE in one query
WHERE emp.department_id=20;                     

--- using subqueries -----
SELECT first_name
FROM employees 
WHERE department_id=20 AND department_id IN 
(SELECT department_id FROM departments);

SELECT first_name,
       (
         SELECT department_name 
         FROM departments               -- Marketing 
         WHERE department_id = 20
        ) AS department_name
FROM employees
WHERE department_id = 20;

--Q4. Write a query to display name of all the employees and their location ID
SELECT emp.first_name,dep.location_id
FROM employees emp
INNER JOIN departments dep
ON emp.department_id=dep.department_id;

-- using Subqueries 
SELECT first_name,
        (
            SELECT location_id 
            FROM departments

        )

FROM employees; 


-- Q5. Write a query to display department name and salary for all the employees working in the Accounting department
SELECT emp.salary,dep.department_name
FROM employees emp
INNER JOIN departments dep
ON emp.department_id=dep.department_id
WHERE dep.department_name='Accounting';

-- Q6. Write a query to display department name, salary, and annual salary for all employees whose salary is more than 3000
SELECT emp.salary,dep.department_name,emp.salary*12 AS annual_salary
FROM employees emp
INNER JOIN departments dep
ON emp.department_id=dep.department_id
WHERE emp.salary>3000;

-- Q7. Write a query to display employee name and department name for all the employees having character 'A' in their department name
SELECT emp.first_name,dep.department_name
FROM employees emp
INNER JOIN departments dep
ON emp.department_id=dep.department_id
WHERE dep.department_name LIKE '%A%';

-- Q8. Write a query to display department name and job for all the employees whose job and department name start with character 'S'
SELECT emp.job_id,dep.department_name
FROM employees emp
INNER JOIN departments dep
ON emp.department_id=dep.department_id
WHERE dep.department_name LIKE 'S%' AND emp.job_id LIKE 'S%';

-- Q9. Write a query to display employee name and department name for all the employees working as a salesman
SELECT emp.first_name,dep.department_name
FROM employees emp
INNER JOIN departments dep
ON emp.department_id=dep.department_id
WHERE emp.job_id='SA_MAN';

-- Q10. Write a query to display employee name and department name who are earning more than 'Diana'
SELECT emp.first_name,dep.department_name
FROM employees emp
INNER JOIN departments dep
ON emp.department_id=dep.department_id
WHERE salary > (
                 SELECT salary FROM employees 
                 WHERE first_name='Diana'
                )
;

-- Q11. Write a query to display department name and manager number for employees reporting to 103
SELECT dep.manager_id,dep.department_name
FROM employees emp
INNER JOIN departments dep
ON emp.department_id=dep.department_id
WHERE dep.manager_id=103;

SELECT * FROM employees;
SELECT * FROM departments;

-- Q12. Write a query to display department name and hire date for all the employees hired after 07-12-2002 into Accounting or Finance department
SELECT dep.department_name,emp.hire_date
FROM employees emp
INNER JOIN departments dep
ON emp.department_id=dep.department_id
WHERE emp.hire_date>'2002-07-12' AND dep.department_name='Accounting' OR dep.department_name='Finance';

-- Q13. Write a query to display employee name and employee ID for all the employees who are in department 80 or 30 and are getting commission
SELECT emp.employee_id,emp.first_name
FROM employees emp
INNER JOIN departments dep
ON emp.department_id=dep.department_id
WHERE emp.department_id IN (80,30) AND commission_pct IS NOT NULL;

-- Q14. Write a query to display department name and employee ID for all the employees whose employee numbers are 198 and 162 and are working in location ID 1500,2500
SELECT dep.department_name,emp.employee_id
FROM employees emp
INNER JOIN departments dep
ON emp.department_id=dep.department_id
WHERE emp.employee_id IN (198,162) AND dep.location_id IN (1500,2500);

------------------------------------------------------------SELF JOIN ----------------------------------------------
-- 
-- Q1. Write a query to display employee name and manager names from employee table
SELECT emp.first_name AS employee_name,mgr.first_name AS manager_name
FROM employees emp
JOIN employees mgr
ON emp.manager_id = mgr.employee_id;

-- Q2. Write a query to display name of the employee and his manager name if employee is working as purchasing clerk
SELECT emp.first_name AS employee_name,mgr.first_name AS manager_name
FROM employees emp
JOIN employees mgr
ON emp.manager_id = mgr.employee_id   -- links each employee to their manager
AND emp.job_id = 'PU_CLERK';

-- Q3. Write a query to display name of the employee and manager's designation if manager works in department 10 or 20
SELECT emp.first_name AS employee_name,mgr.job_id AS manager_job
FROM employees emp
JOIN employees mgr             -- links each employee to their manager
ON emp.manager_id = mgr.employee_id 
AND mgr.department_id IN (10,20);

-- Q4. Write a query to display name of the employee and manager's salary if employee and manager both earn more than 5000
SELECT emp.first_name AS employee_name,mgr.salary AS manager_salary
FROM employees emp
JOIN employees mgr             -- links each employee to their manager
ON emp.manager_id = mgr.employee_id 
AND emp.salary>5000 AND mgr.salary > 5000;

-- 5. Write a query to display employee name and manager's hire date if employee was hired before 2012
SELECT emp.first_name AS employee_name,mgr.hire_date AS manager_hired_date
FROM employees emp
JOIN employees mgr             -- links each employee to their manager
ON emp.manager_id = mgr.employee_id 
AND emp.hire_date <'2012-01-01';

-- 6. Write a query to display employee name and manager commission if employee working as a salesman and manager works in department no. 90
SELECT emp.first_name AS employee_name,mgr.commission_pct AS managers_commission
FROM employees emp
JOIN employees mgr             -- links each employee to their manager
ON emp.manager_id = mgr.employee_id 
AND mgr.department_id = 90 
AND emp.job_id = 'SA_MAN';

-- 7. Write a query to display employee name, manager name, and their salaries if employee earns more than their manager
SELECT emp.first_name AS employee_name,mgr.first_name AS manager_name
FROM employees emp
JOIN employees mgr             -- links each employee to their manager
ON emp.manager_id = mgr.employee_id 
AND emp.salary > mgr.salary;

-- 8. Write a query to display employee name and hire date, manager name and manager hire date if manager was hired before employee
SELECT emp.first_name AS employee_name,emp.hire_date AS employee_hiredate,mgr.first_name AS manager_name,mgr.hire_date AS managers_hire_date 
FROM employees emp
JOIN employees mgr             -- links each employee to their manager
ON emp.manager_id = mgr.employee_id 
AND mgr.hire_date < emp.hire_date;


-- 9. Write a query to display employee name, manager name if both are working in the same job
SELECT emp.first_name AS employee_name,mgr.first_name AS manager_name,emp.job_id AS employee_job,mgr.job_id AS manager_job
FROM employees emp
JOIN employees mgr             -- links each employee to their manager
ON emp.manager_id = mgr.employee_id 
AND mgr.job_id = emp.job_id;

-- 10. Write a query to display employee name, manager name,manager job_id if manager is working as actual manager
SELECT emp.first_name AS employee_name,mgr.first_name AS manager_name,mgr.job_id AS manager_job 
FROM employees emp
JOIN employees mgr             -- links each employee to their manager
ON emp.manager_id = mgr.employee_id 
AND mgr.manager_id = emp.manager_id;

SELECT emp.first_name AS employee_name,
       mgr.first_name AS manager_name,
       mgr.job_id AS manager_job
FROM employees emp
JOIN employees mgr
  ON emp.manager_id = mgr.employee_id
WHERE mgr.employee_id IN (
                            SELECT DISTINCT manager_id 
                            FROM employees 
                            WHERE manager_id IS NOT NULL
                        )
;


-- 11. Write a query to display employee name, manager name, along with their annual salaries if employee works in department no. 10 and 20 and manager salary is greater than employee salary
SELECT emp.first_name AS employee_name,mgr.first_name AS manager_name,mgr.salary*12 AS manager_annual_salary,emp.salary*12 AS employee_annual_salary
FROM employees emp
JOIN employees mgr             -- links each employee to their manager
ON emp.manager_id = mgr.employee_id 
AND emp.department_id IN (10,20)
AND mgr.salary > emp.salary;


-- 12. Write a query to display employee name and manager designation for all the employees
SELECT emp.first_name AS employee_name,mgr.job_id AS manager_job 
FROM employees emp
JOIN employees mgr             -- links each employee to their manager
ON emp.manager_id = mgr.employee_id ;

-- 13. Write a query to display employee name, manager salary for all the employees if manager salary ends with 000
SELECT emp.first_name AS employee_name,mgr.salary AS manager_salary 
FROM employees emp
JOIN employees mgr             -- links each employee to their manager
ON emp.manager_id = mgr.employee_id
AND mgr.salary LIKE '%000';

-- 14. Write a query to display employee name and department name
SELECT emp.first_name AS employee_name,dep.department_name  
FROM employees emp
JOIN departments dep             -- links each employee to their manager
ON emp.department_id = dep.department_id;

-- 15. Write a query to display employees and manager name
SELECT emp.first_name AS employee_name,mgr.first_name AS manager_name
FROM employees emp 
JOIN employees mgr
ON emp.manager_id = mgr.employee_id;

-- 15(a). Write a query to display employees and manager name using Subquery

SELECT e.first_name,
    (
     SELECT m.first_name 
     FROM employees m
     WHERE m.employee_id = e.manager_id
    ) AS manager_name
FROM employees e;

-- 16. Write a query to display employees name, managers name, and employees department name
SELECT e.first_name AS employee_name,m.first_name AS manager_name,d.department_name AS employee_dept_name
FROM employees e 
JOIN employees m
ON e.manager_id = m.employee_id
INNER JOIN departments d
ON e.department_id = d.department_id;

-- 16(a) Write a query to display employees name, managers name, and employees department name using subqueries
SELECT e.first_name AS employee_name,

        (
            SELECT m.first_name 
            FROM employees m
            WHERE e.manager_id = m.employee_id
        ) AS manager_name,
        (
            SELECT d.department_name 
            FROM departments d 
            WHERE d.department_id = e.department_id
        ) AS emp_dept_name
FROM employees e;

-- 17. Write a query to display employee name, manager name, employee's department name, and manager's department name.
SELECT emp.first_name AS emp_name,mgr.first_name AS manager_name,d1.department_name AS emp_dept_name,d2.department_name AS mgr_dept_name
FROM employees emp
JOIN employees mgr
ON emp.manager_id = mgr.employee_id
JOIN departments d1
ON emp.department_id = d1.department_id
JOIN departments d2
ON mgr.department_id = d2.department_id;

-- 18. Write a query to display employee name, manager name, employee's department name, and manager's department name if employee salary is more than 2000 and manager is working in department number 20.
SELECT emp.first_name AS emp_name,mgr.first_name AS manager_name,d1.department_name AS emp_dept_name,d2.department_name AS mgr_dept_name
FROM employees emp
JOIN employees mgr
ON emp.manager_id = mgr.employee_id
JOIN departments d1
ON emp.department_id = d1.department_id
JOIN departments d2
ON mgr.department_id = d2.department_id 
AND emp.salary>2000
AND mgr.department_id = 20;

-- 19. Write a query to display employee name, manager name, and manager's manager name.
SELECT emp.first_name AS emp_name,mgr.first_name AS manager_name,mgrsmgr.first_name AS managers_manager_name
FROM employees emp
JOIN employees mgr
ON emp.manager_id = mgr.employee_id
JOIN employees mgrsmgr
ON mgr.manager_id = mgrsmgr.employee_id;


-- 20. Write a query to display employee name, manager's name, and manager's manager name, along with their department names, if employee earns more than 1000 and manager earns more than Luis, and manager's manager working in location ID 1700 or 1400
SELECT emp.first_name AS emp_name,mgr.first_name AS manager_name,d1.department_name AS emp_dept_name,d2.department_name AS mgr_dept_name
FROM employees emp
JOIN employees mgr
ON emp.manager_id = mgr.employee_id
JOIN departments d1
ON emp.department_id = d1.department_id
JOIN departments d2
ON mgr.department_id = d2.department_id 
AND emp.salary>2000
AND mgr.department_id = 20;

-- 21. Write a query to display employee name, manager's name, and their department names if employee earning more than 'Bruce'and manager earning more than 'Sigal'.

SELECT emp.first_name,mgr.first_name,dep.department_name AS emp_dept_name,mgr_dep.department_name AS mgr_dept_name
FROM employees emp
JOIN employees mgr
ON emp.manager_id = mgr.employee_id
JOIN departments dep 
ON dep.department_id = emp.department_id
JOIN departments mgr_dep
ON mgr_dep.department_id = mgr.department_id
WHERE emp.salary>(SELECT salary FROM employees WHERE first_name='Bruce')
AND mgr.salary>(SELECT salary FROM employees WHERE first_name = 'Sigal');


-- 22. Write a query to display employee name, manager's name, and their location IDs if employee working in department number 10 or 30 and manager earning more than Hazel and employee working in location ID 1700 or 1200.


select e1.first_name "Employee Name", e2.first_name "Manager Name", d1.location_id "Employee Location", d2.location_id "Manager Location"
from employees e1, employees e2, departments d1, departments d2
where e1.manager_id = e2.employee_id
and e1.department_id = d1.department_id
and e2.department_id = d2.department_id
and e1.department_id in (10,20)
and e2.salary > (select salary
                 from employees
                 where first_name='Hazel')
and d1.location_id in (1700,1200);

FROM employees emp,employees mgr,departments emp_dep,departments mgr_dep
ON emp.manager_id = mgr.employee_id
AND 

-- 23. Write a query to display employee name, manager's name, and manager's manager name, along with their location IDs, if the employee was hired before Guy and the manager is working in the Accounting or Finance department, and the manager's manager is earning more than Lex.


----------------------------------------------SINGLE ROW FUNCTIONS----------------------------------------------
--1) UPPER()
--UPPER(column_name) - converts everything into capital letters
--2) LOWER()

--3)initcap()
--only first letter will be converted to capital
--4)LENGTH()
-- how many no of characters in the given arguments
--5) DUAL,REPLACE() - dual is dummy table 
-- SELECT replace('first_name','a','b')
--               ('column_name','substring which we need to replace','replace with what character')

-- 6) SUBSTRING()
-- indexing starts from 1 not from 0 ,-1 means sam > m
-- 
-- 7)INSTRNG() - giving the index of the particular character in the strig

--8)CONCAT() - only accepts two arguments and combining two strings

--9)REVERSE()

--10)TRIM(),LTRIM(),RTRIM() 

--To_char()- IMPORTANT
-- To_char(Date,'fromat models')

--3) different time zone

--SYSDATE-system date - computer date
--3)a) 

--EXTRACT IMPORTANT

-- To_date() IMPORTANT -- to use this the date should be in DATE datatype 
-- for converting the data string '15-29-1999' to DATE FORMAT DATATYPE 15-29-1999 

-- HANDLING NULL VALUES
-- NVL() , NVL(arg1,arg2) - NVL(column name,value that) ,column that contains NULL values ,value to replace the null
-- NULLIF(expr1,expr2) 

-- COALESCE -- everything should be in string format 
-- CAST() used to convert the data type from one to another

SELECT COALESCE(CAST(commission_pct AS CHAR), 'No commission') AS contact
FROM employees;


DESC employees;

-- ROUND() -ROUND(number,decimal_places)
-- DATE FUNCTIONS IMPORTANT
 


----------------------------------------------------ADVANCED SQL -----------------------------------------------------------------------
----------------------------------------------------

-- Functional Dependency and Normalization IMPORTANT FOR INTERVIEW



----------------------------------------------------------SEQUENCE---------------------------------------------------------------
-- 
-- CTE - a mini table from the original table
-- stored procedures