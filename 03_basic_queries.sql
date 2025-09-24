<<<<<<< HEAD
DESCRIBE employees;
SELECT * FROM employees;
SELECT COUNT(*) AS No_of_rows_employees FROM employees;
=======
DESCRIBE employees;
SELECT * FROM employees;
SELECT COUNT(*) AS No_of_rows_employees FROM employees;

DESCRIBE departments;
SELECT * FROM departments;
SELECT COUNT(*) AS No_of_rows FROM departments;

-- ----------------------------------------ALIAS-------------------------------------------------
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
>>>>>>> bb0bdc15d2579e94733e327775ba60115b2a2bca
