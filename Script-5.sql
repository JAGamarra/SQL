SELECT * FROM departments;

SELECT  department_id , location_id FROM departments;

SELECT * FROM employees;

SELECT last_name, job_id , salary, commission_pct  from employees;

SELECT last_name AS "Last Name" , 12 * salary AS "Anual Salary" FROM employees;
SELECT last_name as "Last Name" FROM employees;

-- COALESCE en una función predefinida de SQL, que verifica si un campo es nulo, y le asgina un valor
SELECT last_name, 12 * salary * coalesce(commission_pct, 0) FROM employees;

SELECT UPPER(last_name) || ', ' || first_name AS Employee, salary AS "Salary", 12 * salary AS "Anual Salary"  FROM employees;

-- Punto 3
SELECT  employee_id "Emp #", last_name "Employee", job_id "Job", hire_date "Hire Date" FROM employees e ;

-- punto 4
SELECT last_name ||', '||job_id AS "Employee and Title"   FROM employees e ;

-- Punto 5
SELECT job_id, MIN(1) AS "ID" FROM employees e ;
SELECT DISTINCT job_id FROM employees e ;


SELECT SUM(salary), AVG(salary), MIN(salary), MAX(salary) 
FROM employees e ;







