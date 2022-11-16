SELECT E.emp_no, last_name, first_name, sex, salary
FROM employees4 AS E
JOIN salaries3 AS S
	ON E.emp_no = S.emp_no
;

SELECT first_name, last_name, hire_date
FROM employees4
WHERE EXTRACT(YEAR FROM hire_date) = 1986
;

SELECT mgr.dept_no, d.dept_name, mgr.emp_no, last_name, first_name
FROM dept_manager3 AS mgr
JOIN employees4 AS e
	ON mgr.emp_no = e.emp_no
JOIN departments4 AS d
	ON mgr.dept_no = d.dept_no
;

SELECT e_dept.dept_no, e.emp_no, last_name, first_name, dept.dept_name
FROM employees4 AS e
JOIN dept_emp3 AS e_dept
	ON e.emp_no = e_dept.emp_no
JOIN departments4 AS dept
	ON e_dept.dept_no = dept.dept_no
;

SELECT first_name, last_name, sex
FROM employees4
WHERE first_name='Hercules'
AND last_name LIKE 'B%'
;

SELECT e.emp_no, last_name, first_name, dept.dept_name
FROM employees4 AS e
JOIN dept_emp3 AS e_dept
	ON e.emp_no = e_dept.emp_no
JOIN departments4 AS dept
	ON e_dept.dept_no = dept.dept_no
WHERE dept.dept_name = 'Sales'
;

SELECT e.emp_no, last_name, first_name, dept.dept_name
FROM employees4 AS e
JOIN dept_emp3 AS e_dept
	ON e.emp_no = e_dept.emp_no
JOIN departments4 AS dept
	ON e_dept.dept_no = dept.dept_no
WHERE dept.dept_name = 'Sales'
OR dept.dept_name = 'Development'
;

SELECT last_name, COUNT(last_name) AS frequency
FROM employees4
GROUP BY last_name
ORDER BY frequency DESC
;