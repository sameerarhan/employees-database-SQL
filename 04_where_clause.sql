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
