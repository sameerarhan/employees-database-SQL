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















----------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------           (04) SELF JOIN               ----------------------------------------------
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
