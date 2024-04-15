-- General Instructions
-- 1.	The .sql files are run automatically, so please ensure that there are no syntax errors in the file. If we are unable to run your file, you get an automatic reduction to 0 marks.
-- Comment in MYSQL 


---Question 1
SELECT * 
FROM employees 
WHERE department_id = (SELECT department_id FROM departments WHERE department_name = 'Engineering');

--Question 2
SELECT first_name, salary 
FROM employees;

---Question 3
SELECT * 
FROM employees 
WHERE emp_id IN (SELECT manager_id FROM departments);

---Question 4
SELECT * 
FROM employees 
WHERE salary > 60000;


--Question 5
SELECT * 
FROM employees 
JOIN departments ON employees.department_id = departments.department_id;


--Question 6
SELECT * 
FROM employees CROSS JOIN projects;


--Question 7
SELECT * 
FROM employees 
WHERE emp_id NOT IN (SELECT manager_id FROM departments WHERE manager_id IS NOT NULL);


--Question 8
SELECT * 
FROM departments NATURAL JOIN projects;


---Question 9
SELECT department_name, location 
FROM departments;


---Question 10
SELECT * 
FROM projects 
WHERE budget > 100000;


--QUestion 11
SELECT * 
FROM employees 
JOIN departments ON employees.department_id = departments.department_id 
WHERE department_name = 'Sales' AND manager_id IS NOT NULL;


----Question 12
SELECT first_name, salary 
FROM employees 
WHERE department_id = (SELECT department_id FROM departments WHERE department_name = 'Engineering')
UNION
SELECT first_name, salary 
FROM employees 
WHERE department_id = (SELECT department_id FROM departments WHERE department_name = 'Finance');


------Question 13
SELECT * 
FROM employees 
WHERE emp_id NOT IN (SELECT emp_id FROM projects);



----Question 14
SELECT * 
FROM employees 
LEFT JOIN projects ON employees.emp_id = projects.emp_id;


---Question 15
SELECT * 
FROM employees 
WHERE salary < 50000 OR salary > 70000;
