----------------------------------------SUB QUERIES-------------------------------------------------
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
WHERE first_name='Jean') AND salary <  -- we have to use limit 1 in sub queries
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