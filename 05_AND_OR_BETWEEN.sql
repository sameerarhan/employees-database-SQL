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
WHERE hire_date>'2007-02-20' AND hire_date<'2014-02-20';

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


--------------------------------------------------------IN & NOT IN Operator---------------------------------------------------
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
