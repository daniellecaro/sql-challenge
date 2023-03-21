/* Question 1 */ 
SELECT employees.emp_no,employees.last_name,employees.first_name, employees.sex,salaries.salary
FROM employees 
LEFT JOIN salaries ON employees.emp_no= salaries.emp_no

/* Question 2 */ 
SELECT employees.first_name,employees.last_name, employees.hire_date
FROM employees 
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'

/* Question 3 */ 
SELECT dept_manager.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
FROM dept_manager
INNER JOIN departments
ON dept_manager.dept_no = departments.dept_no
INNER JOIN employees
ON dept_manager.emp_no = employees.emp_no

/* Question 4 */ 
SELECT dept_emp.dept_no, dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees
ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments
ON dept_emp.dept_no = departments.dept_no
ORDER BY employees.emp_no

/* Question 5 */ 
SELECT employees.last_name, employees.first_name, employees.sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

/* Question 6 */ 
SELECT dept_emp.emp_no, employees.last_name, employees.first_name 
FROM departments
INNER JOIN dept_emp
ON dept_emp.dept_no=departments.dept_no
INNER JOIN employees
ON dept_emp.emp_no=employees.emp_no
WHERE departments.dept_name= 'Sales'

/* Question 7 */ 
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name 
FROM departments
INNER JOIN dept_emp
ON dept_emp.dept_no=departments.dept_no
INNER JOIN employees
ON dept_emp.emp_no=employees.emp_no
WHERE departments.dept_name IN ('Sales','Development')

/* Question 8 */ 
SELECT last_name,COUNT(*)
FROM employees
GROUP BY  last_name 
ORDER BY COUNT(*) DESC
