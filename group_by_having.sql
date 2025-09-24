----------------------------------------------QUERIES USING GROUP BY------------------------------------------------------------------
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

--------------------------------------------------QUERIES USING HAVING CLAUSE---------------------------------------------------

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