-- underscore (_) only replace one character
-- percent (%) many characters

SELECT last_name AS "Apellido", salary AS "Salario"
FROM employees e 
WHERE last_name LIKE 'H%';

SELECT last_name
FROM employees e 
WHERE last_name LIKE '_o%'; -- Encuentra los que tengan una o en la segunda letra

SELECT last_name, salary , commission_pct 
FROM employees e 
WHERE commission_pct IS NULL;

SELECT *
FROM employees e 
WHERE manager_id NOT IN (100, 101)
ORDER BY 1 DESC , first_name DESC ;

SELECT UPPER(last_name) AS "Last Name", 
	   SUBSTRING(last_name, 2, 2 ), 
	   REPLACE(last_name, 'a', '*'),
	   salary AS "Salary", 
	   commission_pct AS "Commission", 
	   ROUND(salary  * commission_pct / 1000, 1) 
FROM employees e 
WHERE commission_pct IS NOT NULL;

SELECT  date('now'), time('now'), DATETIME('now'), JULIANDAY('now') - JULIANDAY('1999-05-31') ;


SELECT last_name , manager_id , commission_pct, COALESCE (commission_pct, manager_id, 0)
FROM employees e 


SELECT last_name ||' '|| CASE 
		WHEN manager_id IS NULL THEN 'es el jefe' 
		WHEN manager_id = 100 THEN 'es un subgerente'
		ELSE 'es un empleado' END
FROM employees e ;


-- ********* FUNCIONES DE GRUPO **********

SELECT SUM(salary), AVG(salary), MAX(salary), MIN(salary) 
FROM employees e ;






