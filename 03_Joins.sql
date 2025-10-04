├── 03_joins/
│ ├── 01_inner_join.sql
│ ├── 02_left_join.sql
│ ├── 03_right_join.sql
│ └── 04_full_outer_join.sql

-------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------     (01) INNER JOINS    ------------------------------------------------------

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

-----------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------      (02) LEFT JOIN     ---------------------------------------------------------------
