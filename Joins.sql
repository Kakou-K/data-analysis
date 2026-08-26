select first_name,last_name,department_name from employees
inner join departments 
on departments.department_id = Employees.department_id
where department_name = 'hr'




select * from employees
left join departments
on departments.department_id = employees.department_id


---List all employees along with their department names.
---Find the total salary budget for each department.
---List all employees hired after a specific date in a particular department.
---Find all employees whose last names start with 'S'.
---List all projects along with the department name.
---Find employees who work in the 'Marketing' or 'Sales' department.
----List all employees who work on projects that started after a specific date.
---Find all employees who have a salary greater than $50000 and were hired before '2022'.
---List all projects that have start date after 2022.
---Find all employees who work on projects in departments other than their own.???

select first_name,last_name,department_name from employees
inner join departments 
on departments.department_id = Employees.department_id

SELECT department_id, SUM(salary) AS total_salary
FROM employees
GROUP BY department_id;

select * from employees
inner join departments on departments.department_id = employees.department_id
where hire_date> '12-31-2022' and department_name = 'IT'

select first_name, last_name from employees where last_name like 's%'

select first_name, last_name, department_name from employees 
inner join departments on departments . department_id = employees.department_id
where department_name = 'sales' or department_name= 'marketing' 