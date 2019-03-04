--1
SELECT employees.emp_no, employees.last_name,  employees.first_name, employees.gender, salary.salary 
FROM employees
JOIN salaries AS salary
  ON employees.emp_no = salary.emp_no;
  
--2
SELECT * FROM employees WHERE hire_date LIKE '1986%';

--3
SELECT dept_manager.dept_no, dept_name.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name, dept_manager.from_date, dept_manager.to_date
FROM dept_manager
JOIN employees AS employees
  ON dept_manager.emp_no = employees.emp_no
JOIN departments AS dept_name
  ON dept_manager.dept_no = dept_name.dept_no;
  
--4
SELECT dept_emp.emp_no, employees.last_name,  employees.first_name, departments.dept_name 
FROM dept_emp
JOIN employees AS employees
  ON dept_emp.emp_no = employees.emp_no
JOIN departments AS departments
  ON dept_emp.dept_no = departments.dept_no;
  
--5
SELECT * FROM employees WHERE last_name LIKE 'B%' AND first_name LIKE 'Hercules';

--6
SELECT dept_emp.emp_no, employees.last_name,  employees.first_name, departments.dept_name 
FROM dept_emp
JOIN employees AS employees
  ON dept_emp.emp_no = employees.emp_no
JOIN departments AS departments
  ON dept_emp.dept_no = departments.dept_no
  WHERE dept_emp.dept_no = 'd007';


-- 7
SELECT dept_emp.emp_no, employees.last_name,  employees.first_name, departments.dept_name 
FROM dept_emp
JOIN employees AS employees
  ON dept_emp.emp_no = employees.emp_no
JOIN departments AS departments
  ON dept_emp.dept_no = departments.dept_no
  WHERE dept_emp.dept_no = 'd007' OR dept_emp.dept_no = 'd005';

--8
SELECT last_name, COUNT(*) AS total
FROM employees
GROUP BY last_name 
ORDER BY
    COUNT(*) DESC;