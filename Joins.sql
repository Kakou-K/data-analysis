select first_name,last_name,department_name from employees
inner join departments 
on departments.department_id = Employees.department_id
where department_name = 'hr'

select * from employees
left join departments
on departments.department_id = employees.department_id

---List all employees along with their department names.

select first_name,last_name,department_name from employees
inner join departments 
on departments.department_id = Employees.department_id

---Find the total salary budget for each department.

SELECT department_id, SUM(salary) AS total_salary
FROM employees
GROUP BY department_id;

---List all employees hired after a specific date in a particular department.

select * from employees
inner join departments on departments.department_id = employees.department_id
where hire_date> '12-31-2022' and department_name = 'IT'

---Find all employees whose last names start with 'S'.

select first_name, last_name from employees where last_name like 's%'

---List all projects along with the department name.

select project_name, department_name from projects
inner join departments on projects.department_id = departments.department_id

---Find employees who work in the 'Marketing' or 'Sales' department.

select first_name, last_name, department_name from employees 
inner join departments on departments . department_id = employees.department_id
where department_name = 'sales' or department_name= 'marketing' 

----List all employees who work on projects that started after a specific date.

select first_name, last_name from employees

inner join projects on projects.department_id = employees.department_id 

where start_date > '12-31-2020'

---Find all employees who have a salary greater than $50000 and were hired before '2022'.

select first_name, last_name, hire_date from employees where salary> 50000 and hire_date < '2022-12-31'

---List all projects that have start date after 2022.

---Find all employees who work on projects in departments other than their own.???
