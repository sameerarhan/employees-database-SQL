├── 04_aggregations/
│ ├── 01_aggregate_functions.sql
│ ├── 02_group_by.sql
│ ├── 03_having.sql
│ └── 04_nested_aggregates.sql






------------------------------------- (01) AGGREGATE /MULTIROW  FUNCTIONS----------------------------------------------
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
SELECT COUNT(DISTINCT (department_id)) AS no_of_departments
FROM employees;

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
