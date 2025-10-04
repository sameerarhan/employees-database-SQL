├── 05_subqueries_ctes/
│   ├── 01_subqueries.sql
│   ├── 02_ctes.sql
│   └── 03_recursive_ctes.sql

-------------------------------------------------------------------------------------------------------------------
  --------------------------------------    (01) SUB QUERIES       -------------------------------------------------
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

-- 8. write a query to display Employee ID, name, and annual salary if annual salary > Shelli
SELECT employee_id,first_name,salary*12 AS annual_salary 
FROM employees
WHERE salary*12 >(SELECT salary*12 AS annual_salary
FROM employees
WHERE first_name='Shelli');

-- 9. write a query to display Name and hire date of employees hired before 'Adam'
SELECT first_name,hire_date
FROM employees
WHERE hire_date <
(SELECT hire_date
FROM employees
WHERE first_name='Adam');

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
FROM employees                          
WHERE first_name='Ismael');

-- 16. . Write a query to display All details of Sales Managers in the same department as 'Christopher'
SELECT * 
FROM employees
WHERE job_id='SA_MAN' AND department_id =        
(SELECT department_id                       
FROM employees                          
WHERE first_name='Christopher');


-- 17. . WRITE  a query to display Name and hire date of employees hired after 2017 and before 'Austin'
SELECT first_name,hire_date 
FROM employees
WHERE hire_date>'2017-12-31' AND hire_date <
(SELECT hire_date
FROM employees
WHERE first_name='Austin'); 

-- 18. . WRITE  a query to display Name, salary, and annual salary for employees earning less than Stephen OR more than 3500
SELECT first_name,salary,salary*12 AS annual_salary 
FROM employees
WHERE salary>3500 OR salary<
(SELECT salary                     
FROM employees
WHERE first_name='Stephen');

-- 19. WRITE  a query to display All details of employees who earn more than Jean but less than Neena
SELECT * 
FROM employees
WHERE salary >
(SELECT salary
FROM employees
WHERE first_name='Jean') AND salary <  
(SELECT salary
FROM employees
WHERE first_name='Neena');

-- 20. WRITE  a query to display Name of employees whose names having  'A' and work in the same department as Den
SELECT first_name FROM employees
WHERE first_name LIKE '%A%' AND department_id=
(SELECT department_id
FROM employees
WHERE first_name='Den'); 

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
SELECT first_name,salary*12 AS annual_salary,job_id 
FROM employees
WHERE salary*12 > 
(SELECT salary*12 AS annual_salary_of_anthony  -- annual_salary_of_anthony - 36000
FROM employees
WHERE first_name='Anthony') AND salary*12 <
(SELECT salary*12 AS annual_salary_of_gerald   -- annual_salary_of_gerald -132000
FROM employees
WHERE first_name='Gerald');

----------------------------------       (01)(a)SUB QUERIES USING ANOTHER TABLE           -------------------------------------------------
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

-------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------            (02) CTE             -------------------------------------------------------------------------

