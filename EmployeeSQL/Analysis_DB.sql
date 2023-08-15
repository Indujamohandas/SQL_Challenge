SELECT e.emp_no,last_name,first_name,sex,salary
from employees e 
JOIN salaries s
ON e.emp_no = s.emp_no;

SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;


SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_manager AS dm JOIN employees AS e
ON e.emp_no = dm.emp_no
JOIN departments AS d
ON dm.dept_no = d.dept_no;

SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from departments d
JOIN dept_emp AS de ON d.dept_no = de.dept_no 
JOIN employees AS e ON de.emp_no = e.emp_no;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT last_name, COUNT(last_name) AS last_name_count
FROM employees
GROUP BY last_name
ORDER BY last_name DESC;