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

select * from projects

select * from employees

select * from departments

select first_name, last_name from employees

inner join projects on projects.department_id = employees.department_id 

where start_date > '12-31-2020'

select first_name, last_name, hire_date from employees where salary> 50000 and hire_date < '2022-12-31'

-- Exercise 1: Select all columns from the employees table

select *from employees

-- Exercise 2: Select first_name and last_name from employees

select first_name, last_name from employees

-- Exercise 3: Select department_name from departments

select department_name from departments

-- Exercise 4: Select project_name and start_date from projects

select project_name, start_date from projects


-- Exercise 5: Find all employees with a salary greater than 50000

select first_name, last_name, salary from employees where salary > 50000


-- Exercise 6: Find all employees hired after '2020-01-01'

select first_name, last_name, hire_date from employees where hire_date > '2020-01-01'

-- Exercise 7: Find all projects that started before '2022-01-01'

select project_name from projects where start_date < '2022-01-01' --or--  
select * from projects where start_date < '2022-01-01'

-- Exercise 8: Find all departments with department_id greater than 5

select department_name from departments where department_id > 5


-- Exercise 9: Count the total number of employees

SELECT COUNT(*) AS total_employees
FROM employees;

-- Exercise 10: Count the number of projects in the projects table

select count(*) as total_projects from projects

-- Exercise 11: Find the total salary paid to employees


-- Exercise 12: Find the average salary of employees


-- Exercise 13: Find the total number of employees in a specific department (e.g., department_id = 1)


-- Exercise 14: Calculate the total salary paid to employees in a specific department (e.g., department_id = 2)

-- Exercise 15: Find the average salary of employees in department_id = 3


-- Exercise 16: Find all employees whose first name starts with 'A'

select first_name, last_name from employees where first_name like 'a%'


-- Exercise 17: Find all projects ending in the year 2023

select project_name, end_date from projects where end_date between '2023-01-01' and '2023-12-31'

-- Exercise 18: count all employees with salaries between 40000 and 60000


-- Exercise 19: Count the number of departments in the departments table


-- Exercise 20: Find the sum of salaries for employees hired before 2015

--Exercise 21: Get the projects that started before January 1, 2020, and are associated with the 'IT' department.

select project_name, start_date, department_name
from projects
inner join departments on departments.department_id = projects.department_id
where start_date < '2020-01-01'
and department_name = 'IT'

--Exercise 22: List the employees who have a salary greater than 50000, ordered by salary.

select first_name, last_name, salary from employees where salary > 50000 order by salary

--Select employees hired after a specific date or from a specific department.

select first_name, last_name, hire_date, department_id
from employees
where hire_date > '2022-01-01'
or department_id = 1

---Select employees whose last name contains 'Smith'.

Select first_name, last_name from employees
where last_name LIKE '%Smith%'


---Find all employees who work on projects in departments other than their own.

select first_name, last_name from employees
inner join departments on
departments.department_id = employees.department_id
where salary > 70000 and department_name in ('finance', 'IT')

select first_name, last_name, department_name
from employees
inner join departments on employees.department_id = departments.department_id
where hire_date between '2022-01-01' and '2022-06-01'

select top 1 * from employees 
inner join departments on employees.department_id = departments.department_id
where department_name = 'IT'  
order by hire_date  asc 

select first_name, last_name, department_name, project_name from employees
inner join departments on employees.department_id = departments.department_id
inner join projects on employees.department_id = projects.department_id


select first_name, last_name, salary from employees 
inner join departments on employees.department_id = departments.department_id
where (salary not between 60000 and 70000) and department_name = 'hr'


-- 1. Select all columns from the employees table

select * from employees


-- 2. Select employee_id, first_name, last_name, and salary from employees

select employee_id, first_name, last_name, salary
from employees

-- 3. Select employees whose salary is greater than 70000

select first_name, last_name from employees where salary > 70000

-- 4. Select employees hired after '2021-01-01'

select first_name, last_name from employees where hire_date > '2021-01-01'


-- 5. Select employees whose last_name starts with 'A'

select first_name, last_name from employees where last_name like 'A%'


-- 6. Select employees whose last_name contains 'son'

select first_name, last_name from employees where last_name like '%son%'

-- 7. Select employees who work in department_id 1 or 3

select *from employees where department_id = 1 or department_id = 3
select *from employees where department_id in (1,3)

-- 8. Select employees who do NOT work in department_id 2 or 4

select *from employees where department_id <> 2 and department_id <> 4
select *from employees where department_id not in (2,4)

-- 9. Select employees whose first_name does NOT start with 'J'

select first_name, last_name from employees where first_name not like 'J%'

-- 10. Select employees where department_id is NULL

select * from employees where department_id is null


/* 1. Retrieve all employees who work in the IT department (department_id = 3). */

select first_name, last_name, department_name from employees 
inner join departments on departments.department_id = employees.department_id
where department_name = 'IT'


/* 2. Find employees whose salary is between 70,000 and 80,000. */

select * from employees where salary between 70000 and 80000

/* 3. List employees whose last name starts with 'W'. */

select * from employees where last_name like 'W%'


/* 4. Retrieve employees who belong to departments 1, 2, or 4. */

select * from employees where department_id = 1 or department_id = 2 or department_id = 3

select * from employees where department_id in (1,2,3)

/* 5. Find employees who do not have a department assigned. */

select *from employees where department_id is null


/* 6. Find the total number of employees in each department. */

select department_id, count(*)
from employees
group by department_id; ---???

select department_id, count(*) as total_employees
from employees
group by department_id;





/* 11. List employees along with their department names. */

select first_name, last_name , department_name from employees
inner join departments on departments.department_id = employees.department_id


/* 12. Retrieve all projects with their department names. */

select * from departments
select * from projects

select project_name, department_name from projects
inner join departments on projects.department_id = departments.department_id


/* 13. Find employees working in the Marketing department. */

select first_name, last_name, department_name from employees
inner join departments on employees.department_id = departments.department_id
where department_name = 'marketing'


--15. List projects that belong to the same department as employee 'John Doe'. 

select project_name from projects 
inner join employees on employees.department_id = projects.department_id
where first_name = 'John' and last_name = 'Doe'


/* 21. For each department, display the department name and the max salary of employees. */

select department_name, max (salary) as max_salary from employees
inner join departments on departments.department_id = employees.department_id
group by department_name


/* 22. Show the department name and the average salary of employees in each department. */

select department_name, avg (salary) as average from employees
inner join departments on departments.department_id = employees.department_id
group by department_name

/* 23. Find the department name and the highest salary among its employees. */

select department_name, max (salary) as highest_paid from employees
inner join departments on departments.department_id = employees.department_id
group by department_name


/* 24. Display each department name along with the number of projects assigned to it. */

select department_name, count (project_name) as number_of_projects from departments
inner join projects on projects.department_id = departments.department_id
group by department_name


-- Exercise 11: Find the total salary paid to employees

select sum (salary) as total_salary from employees


-- Exercise 12: Find the average salary of employees

select avg (salary) from employees


-- Exercise 13: Find the total number of employees in a specific department (e.g., department_id = 1)

select department_name, count (first_name) as no_emp from employees
inner join departments on departments.department_id = employees.department_id  --???
where employees.department_id = 1
group by department_name

select department_name,
(select count (*) from employees
    where employees.department_id = departments.department_id) as total_employees --???
from departments
where department_id = 1;




-- Exercise 14: Calculate the total salary paid to employees in a specific department (e.g., department_id = 2)

select department_name, sum (salary) as total_salary from employees
inner join departments on departments.department_id = employees.department_id
where departments.department_id = 2
group by department_name

-- Exercise 15: Find the average salary of employees in department_id = 3

select department_name, avg (salary) as average from employees
inner join departments on departments.department_id = employees.department_id
where departments.department_id = 3
group by department_name

-- Exercise 16: Find all employees whose first name starts with 'A'

select first_name, last_name from employees
where first_name like 'A%'

-- Exercise 18: count all employees with salaries between 40000 and 60000

select count (*)  as total_employees from employees
where salary between 40000 and 60000  




-- Exercise 19: Count the number of departments in the departments table

select count(*) from departments

-- Exercise 20: Find the sum of salaries for employees hired before 2015

select sum (salary) from employees 
where hire_date < '2015-01-01'

--Exercise 21: Get the projects that started before January 1, 2020, and are associated with the 'IT' department.


select project_name, start_date, department_name from projects 
inner join departments on departments.department_id = projects.department_id
where start_date < '2022-01-01'
and department_name = 'IT' ---??? --allaxa date

/* 7. Calculate the average salary per department. */

select department_name, avg (salary) as average from departments
inner join employees on employees.department_id = departments.department_id
group by department_name

/* 8. Find the highest salary in each department. */

select department_name, max (salary) as maximum from departments
inner join employees on employees.department_id = departments.department_id
group by department_name

/* 9. Count how many projects each department has. */

select department_name, count (project_name) as no_projects from departments
inner join projects on departments.department_id = projects.department_id
group by department_name

/* 10. Show departments having an average salary greater than 75,000. */

select department_name, avg (salary) from employees
inner join departments on departments.department_id = employees.department_id
group by department_name
having avg (salary) > 75000

--fere ana department posa atoma doulevoun

select department_name, count (*) as total from employees
inner join departments on departments.department_id = employees.department_id
where first_name like '%A%'
group by department_name

having count (*) > 8




--CASE WHEN

 -- 1. Write a query to categorize employees into salary groups:
-- "Low" if salary < 40,000, "Medium" if between 40,000–60,000, otherwise "High".

select first_name, last_name, salary ,

case 
when salary < 40000 then 'low'
when salary between 40000 and 60000 then 'medium'
else 'high'
end as salary_group from employees

-- 2. Write a query to display each employee’s name and show
-- "Human Resources" if they belong to department_id = 1, otherwise "Other Department".

select first_name, last_name,
case when department_id = 1 then 'Human Resaurces'
else 'other department'
end as employees_HR from employees

-- 3. Write a query to label employees as "Old Hire" if they were hired more than 1 year ago,
-- otherwise label them as "New Hire".

DATEDIFF(day, hire_date, GETDATE()) <= 365

select first_name, last_name, hire_date, 
case when DATEDIFF(day, hire_date, GETDATE()) > 365 then 'old hire'
else 'new hire'
end as hire_status from employees
select GETDATE()

-- 4. Write a query to display "YES" if an employee earns more than 50,000,
-- otherwise display "NO".

select first_name, last_name, salary,

case when salary > 50000 then 'yes'
else 'no'
end as rich from employees

-- 5. Write a query to categorize employees as "HR" if department_id = 1,
-- otherwise "Other".

select first_name, last_name, 
case when department_id = 1 then 'HR'
else 'other'
end as query from employees


-- 6. Write a query to show each employee’s salary along with a note:
-- "Less than 40K" or "40K or more".

select first_name, last_name, salary,
case when salary < 40000 then 'less than 40k'
else '40k or more'
end as query from employees

-- 7. Write a query to categorize employees based on hire year:
-- before 2020, in 2020, or after 2020.

select first_name, last_name, hire_date,
case when hire_date < '2020-01-01' then 'before 2020'
when hire_date between '2020-01-01' and '2020-12-31' then 'in 2020'
else 'after 2020'
end as hires_2020 from employees

-- 8. Write a query to indicate salary adjustment:
-- "Increase" if salary ≤ 55,000, otherwise "No Change".

select first_name, last_name, salary,
case when salary <= 70000 then 'increase'
else 'no change'
end as salary_adjustments from employees

-- 9. Write a query to display full name and label employees as
-- "Current Employee" (hired ≤ 2022) or "New Employee".

select first_name, last_name, hire_date,
case when hire_date <= '2022-01-01' then 'current employee'
else 'new employee'
end as employee_status
from employees

-- 10. Write a query to label employees as "Senior Employee" if they have
-- worked 5+ years, otherwise "Junior Employee".

select first_name, last_name, hire_date ,
case when hire_date < '2019-01-01' then 'senior employee'
else 'junior employee'
end as employee_level from employees

--  Find all employees who work in department 1
-- and earn more than 70,000.

select * from employees 
where department_id = 1 and salary > 70000


-- Find employees whose first name starts with 'A' or was hired in 2022.

select first_name, last_name from employees 
where first_name like 'A%' or hire_date between '2022-01-01' and '2022-12-31'

-- . Find employees whose last name ends with 'son'.

select first_name, last_name from employees
where first_name like '%son'

 --Find employees hired between 2020-01-01 and 2022-12-31 in departments 1 and  4.
select * from employees
where hire_date between '2020-01-01' and '2022-12-31'


 --Find employees who belong to department 1 OR 3 OR earn more than 80k in salary.
select *from employees
where department_id = 1 or department_id = 3


-- 6. Find employees whose salary is between 70,000 and 85,000.
select first_name, last_name, salary from employees
where salary between 70000 and 85000

--Find projects that started in 2023.

select project_name, start_date from projects
where start_date between '2023-01-01' and '2023-12-31'

--  Find projects whose name contains the word 'System'.
select * from projects
where project_name like '%system%'

-- Show employee full names with their department names. hired after 2023

select first_name, last_name, department_name, hire_date from employees
inner join departments on departments.department_id = employees.department_id
where hire_date > '2023-12-31'

-- Show all employees including those without a department.

select first_name, last_name, department_name from employees
left join departments on departments.department_id = employees.department_id



--Find employees who work in HR or IT and earn more than 75,000.

select first_name, last_name, department_name from employees
inner join departments on departments.department_id = employees.department_id
where (department_name = 'HR' or department_name = 'IT')
and salary > 75000

 --Find projects that belong to the Marketing department.

 select project_name, department_name from projects
 inner join departments on departments.department_id = projects.department_id
 where department_name = 'Marketing'


--Find employees whose first name contains the letter 'o' and salary is greater than 65,000.

select first_name, last_name , salary from employees
where first_name like '%o%' and salary > 65000

-----aggregations

-- 1. Count employees who earn more than 75,000.

select count (*) as top_performers from employees
where salary >75000

-- 2. Find the average salary of employees
-- in department 1 OR department 3.

select avg(salary) as average from employees
where department_id in (1,3)

-- 3. Find the highest salary among employees
-- hired between 2020 and 2023.

select max (salary) from employees
where hire_date between '2020-01-01' and '2023-12-31'



-- 4. Find the minimum salary of employees
-- whose first name starts with 'A' or 'M'.

select min (salary) from employees
where first_name like 'A%' or first_name like'M%'


-- 5. Count all projects that belong to
-- the IT or Marketing departments.

select count (*) from projects
inner join departments on departments.department_id = projects.department_id
where department_name = 'IT' or department_name = 'Marketing'

-- 6. Find the total salary of employees
-- whose last name contains 'son'.

select sum (salary) as total_salary from employees
where last_name like '%son%'


-- 7. Find the average salary of employees
-- in HR department earning above 65,000.

select avg (salary) as average_HR from employees
inner join departments on departments.department_id = employees.department_id
where salary > 65000 and department_name = 'HR'

-- 8. Count employees with NULL department_id
-- OR salary greater than 80,000.

select count (*) from employees
where department_id is null or salary > 80000


-- 9. Find the maximum salary of employees
-- whose first name contains 'o'
-- and who belong to IT department.

select max (salary) from employees
inner join departments on departments.department_id = employees.department_id
where department_name = 'IT' and first_name like '%o%'


-- 10. Find the total number of projects
-- that started in 2023 and whose project name
-- contains 'Program' or 'Platform'.

select count (*) from projects 
where start_date between '2023-01-01' and '2023-12-31'
and (project_name like '%program%' or project_name like '%platform%')




-- 11. Count how many employees exist in each department.

select department_name , count (*) from employees
inner join departments on departments.department_id = employees.department_id
group by department_name

-- 12. Find the average salary per department
-- where average salary is greater than 70,000.

select department_name,  avg (salary) from employees
inner join departments on employees.department_id = departments.department_id
group by department_name 
having avg(salary) > 70000


-- 13. Find the highest salary in each department
-- for employees hired after 2020.

select department_name, max (salary) as highest from employees
inner join departments on departments.department_id = employees.department_id
where hire_date > '2020-12-31'
group by department_name

--1 4. Count projects per department
-- where project name contains 'System' or 'Platform'.

select department_name, count (*) from projects 
inner join departments on departments.department_id = projects.department_id
where project_name like '%system%' or project_name like '%platform%'
group by department_name


-- 15. Find the total salary per department
-- for employees earning between 65,000 and 85,000.

select department_name, sum(salary) from employees
inner join departments on departments.department_id = employees.department_id
where salary between 65000 and 85000
group by department_name

--fere posous pairnoun katw apo to meso oro misthou

select * from employees
where salary < (select avg (salary) from employees) 

-- 1. List all employees who have a salary higher than the average salary of all employees.

select first_name, last_name, salary,( select avg (salary) from employees) as average
from employees 

where salary > (select avg (salary) from employees) --gia na fainetai kai to average


-- 2. Show all employees hired after the earliest hire date in the company.

select first_name, last_name, hire_date from employees
where hire_date > (select min (hire_date) from employees)

-- 3. List the employees whose salary is equal to the highest salary in the company.

select * from employees where salary = (select max (salary) from employees)


-- 4. Display the department whose department_id is the smallest.

select department_name from departments
where department_id = (select min (department_id) from departments)

-- 5. Show all employees who work in the department that has the most employees.


select*from employees 
where department_id= 
(select top 1  employees.department_id from employees
inner join departments on employees.department_id = departments.department_id
group by employees.department_id
order by count(*) desc)

 --or

select * from employees where department_id =
(select top 1 department_id from employees

group by department_id
order by count(*) desc)


-- 6. List employees who earn more than the average salary in the IT department (department_id = 3).

select first_name, last_name, salary from employees 
where salary> (select avg (salary) from employees where department_id = 3)

-- 7 Display the department name of the department where the highest-paid employee works.

select department_name from departments 
where department_id = (select department_id from employees
where salary = (select max (salary) from employees))

select department_name from departments
inner join employees on departments.department_id = employees.department_id
where salary = (select max (salary) from employees)



-- 8. List the employees who work in the same department as employee with employee_id = 1.

select first_name, last_name from employees
where department_id = (select department_id from employees
where employee_id = 1)



--aytoi pou  doulevoun sto dept id 2 h doulevoun se project pou exei mesa ena A

select * from employees
inner join projects on employees.department_id = projects.department_id
where employees.department_id = 2 or project_name like '%A%'

--metra posoi ypallhloi irthan to 2021

select count (*) from employees
where hire_date between '2021-01-01' and '2021-12-31'

---posoi doulevoun se ola ta tmhmata ektos to 3 kai 4 

select department_name, count(*) as posoi from employees
inner join departments on employees.department_id = departments.department_id
where departments.department_id not in (3,4)
group by department_name

-- posous employees exei to kathe tmhma, mono gia aytous pou hire date 2022

select department_id,  count (*) from employees
where hire_date between '2022-01-01' and '2022-12-31'
group by department_id

--fere me subquerie to atomo pou pairnei ta ligotera lefta apo olous

select first_name, last_name, salary from employees
where salary = ( select min (salary) from employees)

--vres me subquerie poios irthe pio prosfata sth douleia

select first_name, last_name, hire_date from employees
where hire_date = (select max (hire_date) from employees)

--metra se posa project doulevei to it

select count(*) from projects
inner join departments on projects.department_id = departments.department_id
where department_name = 'IT' 

---fere tous employees pou doulevoun sto hr

select first_name, last_name, department_name from employees
inner join departments on employees.department_id = departments.department_id
where department_name = 'HR'

-- fere tous mesous orous pou xodevei to kathe tmhma alla mono ta tmhmata poy xodevoun meso oro metaxy 70-150k



select department_name, avg(salary) as average from employees
inner join departments on employees.department_id = departments.department_id
group by department_name
having avg(salary) between 70000 and 150000

 --Find the average salary per department where average salary is greater than 70,000.

 select department_name, avg (salary) from employees
 inner join departments on employees.department_id = departments.department_id
 group by department_name
 having avg (salary) > 70000


  --Find the highest salary in each department for employees hired after 2022.

 select department_name, max(salary) as highest_salary
from employees
inner join departments
on departments.department_id = employees.department_id
where hire_date > '2022-12-31'
group by department_name

--Count projects per department where project name contains 'System' or 'Platform'.

select department_name, count(*) as total_projects
from projects
inner join departments on departments.department_id = projects.department_id
where project_name like '%System%'
or project_name like '%Platform%'
group by department_name


--Find the total salary per department for employees earning between 65,000 and 85,000.

--Find the average salary per department where average salary is greater than 70,000.---having giati filtrarw avg

select department_name, sum (salary) as total_salary from employees
inner join departments on employees.department_id = departments.department_id
where salary between 65000 and 85000
group by department_name

-- 1. List all employees who have a salary higher than the average salary of all employees.

select first_name, last_name, salary
from employees
where salary >
(select avg(salary) from employees)

-- 2. Show all employees hired after the earliest hire date in the company.

select first_name, last_name, hire_date
from employees
where hire_date >
(select min(hire_date) from employees)


-- 3. List the employees whose salary is equal to the highest salary in the company.

select first_name, last_name, salary
from employees
where salary = (select max(salary) from employees)

-- 4. Display the department whose department_id is the smallest.

select department_name from departments
where department_id = (select min (department_id) from departments)

select top 1 department_name
from departments
order by department_id

-- 6. List employees who earn more than the average salary in the IT department (department_id = 3).

select first_name, last_name, salary
from employees
where salary >
(select avg(salary) from employees where department_id = 3)

-- 7 Display the department name of the department where the highest-paid employee works.

select department_name from departments
inner join employees on departments.department_id = employees.department_id
where salary = (select max (salary) from employees)

---display the 5 oldest employees on the company

select top 5 * from employees
order by hire_date desc

--how many on h and it only?

select count (*) as total from employees
inner join departments on employees.department_id = departments.department_id
where department_name in ('HR','IT')

---create a view containing departments and how many employees
create view employees_per_department as 
select department_name, count(*) as emp_number from departments
inner join employees on departments.department_id = employees.department_id
group by department_name

select * from employees_per_department

---create a view gia ypallhlous pou doulevoun sto dept id 1 h 3 h vgazoun panw apo 80k



create view employees_1_3_80 as
select  * from employees
where department_id in (1,3) or salary>80000

select*from employees_1_3_80

select department_name from employees_1_3_80
inner join departments on departments.department_id = employees_1_3_80.department_id
group by department_name

select first_name, last_name, salary from employees
where department_id = 2

union

select first_name, last_name, salary from employees
where department_id = 3



--- Retrieve the `first_name`, `last_name`, and `salary` of all employees hired after '2022-01-01' who earn more than 60000.

select first_name, last_name, salary
from employees 
where hire_date > '2022-01-01' and salary > 60000


---2.  Calculate the total and average `salary` for each unique `department_id`.


select department_id, sum (salary) as total_salary,
avg (salary) as average_salary from employees
group by department_id




---3.  List each `department_name` and the number of employees associated with it. Include departments that might have a `NULL` name (like Department ID 5) and display 'Unnamed Department' for them.
select*from departments
select count(*) as total_employees,
    case
        when department_name is null then 'Unnamed Department'
        else department_name
    end as department_name
  from employees
  right join departments
on departments.department_id = employees.department_id
group by department_name;

---4.  Categorize employees into salary brackets: 'High Salary' (salary > 80000), 'Medium Salary' (salary between 50000 and 80000 inclusive), and 'Low Salary' (salary < 50000). Count how many employees fall into each category.

select 'High Salary' as salary_bracket, count(*) as total_employees
from employees
where salary > 80000

union

select 'Medium Salary', count(*)
from employees
where salary between 50000 and 80000

union

select 'Low Salary', count(*)
from employees
where salary < 50000



---5.  Create a view named `EmployeeContactInfo` that displays `employee_id`, `first_name`, `last_name`, and `department_name` for all employees. Use a `LEFT JOIN` to ensure all employees are included, even those with a `NULL department_id` (like Employee ID 46).

create view employeecontactinfo as
select employee_id, first_name, last_name, department_name
from employees
left join departments on departments.department_id = employees.department_id

---6.  Using the `EmployeeContactInfo` view created in the previous exercise, select the `first_name` and `last_name` of all employees who work in a department named 'Sales' (case-insensitive).

select first_name, last_name from employeecontactinfo
where department_name= 'sales'

---7.  List all unique `department_id`s that appear in either the `employees` table or the `projects` table.

select department_id
from employees

union

select department_id
from projects

--auto thelei UNION
--8.  Combine the `first_name` of all employees and the `project_name` of all projects into a single result set. Add a column named `RecordType` which indicates whether the entry is 'Employee' or 'Project'.

select first_name, 'employees' as recordtype from employees
union
select project_name, 'project' as recordtype from projects 

---9.  Find the `employee_id`, `first_name`, and `last_name` of all employees who are not assigned to any department (i.e., their `department_id` is `NULL`).

select employee_id, first_name, last_name from employees
where department_id is null

---10. Display the `first_name`, `last_name`, and the `department_name` for all employees. If an employee has a `NULL department_id` (like Alice Williams, Employee ID 46), display 'Unassigned' as their department name. If a department has a `NULL department_name` (like Department ID 5), display 'Unknown Department Name'.

select first_name, last_name,
case
when employees.department_id is null then 'unassigned'
when department_name is null then 'unknown department name'
else department_name 
end as department_name
from employees
left join departments on employees.department_id = departments.department_id

---11. For each department, find the highest and lowest `salary`. Display the `department_name`. Include all departments, even those with no employees. If a department has no employees, show `NULL` for max/min salary.

select department_name, max(salary) as highest_salary, min(salary) as lowest_salary from employees
left join departments on employees.department_id = departments.department_id
group by department_name

---12. Count the total number of projects that started in the year 2023.

select count(*) as total_projects
from projects
where start_date between '2023-01-01' and '2023-12-31'

---13. Create a view named `DepartmentSalarySummary` that shows each `department_name` along with the `total_salary` and `employee_count` for that department. Include departments even if they have a `NULL` name, displaying 'Unnamed Department' for them.

create view DepartmentSallarySummary as 
select sum(salary) as total_salary, count (employee_id) as employee_count,
case when department_name is null then 'unnamed department'
else department_name
end as department_name from departments
left join employees on departments.department_id = employees.department_id
group by department_name
select*from DepartmentSallarySummary



---14. Select `project_name` and display its associated `department_name`. If a project has a `NULL department_id` (like Project ID 141), show 'Cross-Departmental' instead of a `NULL` name. Filter the results to include only projects that started before '2023-01-01'.

select project_name,
case when projects.department_id is null then 'cross-departmental'
when department_name is null then 'unknown department name'
else department_name
end as department_name from projects
left join departments on projects.department_id= departments.department_id
where start_date < '2023-01-01'

---15. List the `department_name`s that have more than 3 employees.

select department_name from departments
inner join employees on departments.department_id = employees.department_id
group by department_name
having count(employee_id) > 3 

---16. Find the `employee_id`, `first_name`, and `last_name` for employees who either earn more than 70000 OR were hired after '2023-01-01' AND work in `department_id` 101.

select employee_id, first_name, last_name
from employees
where salary > 70000 or (hire_date > '2023-01-01' and department_id = 101)

--17. Display `project_name` along with a `ProjectStatus` column. If `end_date` is `NULL`, the status is 'Ongoing'. If `end_date` is a future date (relative to the current date), the status is 'Upcoming'. Otherwise, the status is 'Completed'.

select
project_name,
case when end_date is null then 'Ongoing'
when datediff(day, getdate(), end_date) > 0 then 'Upcoming'
else 'Completed'
end as ProjectStatus
from projects

--18. Create a combined list of all `department_id`s from the `employees` table and the `projects` table. For any `NULL department_id` values found in either table (like for Employee ID 46 or Project ID 141), display `999` instead. Ensure there are no duplicate `department_id`s in the final list.

select 
case when department_id is null then 999
else department_id
end as id
from employees

union

select 
case when department_id is null then 999
else department_id
end as id
from projects

--19. Create a view named `EmployeePerformanceTier` that includes `employee_id`, `first_name`, `last_name`, `salary`, and a new column `PerformanceTier`. Assign 'Tier A' if `salary` > 90000, 'Tier B' if `salary` is between 60000 and 90000 (inclusive), and 'Tier C' otherwise. Include employees with `NULL department_id`.

create view EmployeePerformanceTier as
select employee_id, first_name, last_name,salary,
case when salary > 90000 then 'Tier A'
when salary between 60000 and 90000 then 'Tier B'
else 'Tier C'
end as performanceTier
from employees


--20. Calculate the total salary of employees working on projects that are currently 'Ongoing' (i.e., `end_date` is `NULL`). Group this total by the `department_name`. If a project or employee department is `NULL`, count its associated salary towards an 'Unspecified Department' category.

select department_name, sum(salary) as total_salary,
case when department_name is null then 'Unspecified Department'
else department_name
end as department_name
from employees
left join departments
on employees.department_id = departments.department_id
inner join projects on employees.department_id = projects.department_id

group by department_name


--for each department, how many employees, sum salary and se panw apo 10 project

select department_name, sum(salary), count(*) from departments
inner join employees on departments.department_id = employees.department_id
group by department_name
having count(*) > 10

--poios pairnei ta pio polla lefta apo olous?

select first_name, last_name, salary from employees
where salary = (select max(salary) from employees)

--the oldest person hired?

select first_name, last_name, hire_date from employees
where hire_date = (select min(hire_date) from employees)

--employees who work on hr or finance

select first_name, last_name from employees
where department_id in (select department_id from departments where department_name in ('HR','finance'))

--ana xronia posa hires eixame

select year (hire_date), count(*) from employees
group by year (hire_date)


--Retrieve employees with department name HR, IT, or Finance and salary greater than 70000 using JOIN

select first_name, last_name, department_name, salary from employees
inner join departments on employees.department_id = departments.department_id
where department_name in ('HR', 'IT', 'Finance')
and salary > 70000


-- 2 Find employees in department 1 or 3 with salary between 65000 and 90000 and first name starting with A

select first_name, last_name, salary from employees 
where department_id in (1,3) and salary between 65000 and 90000 and first_name like 'A'

-- 3Show departments with more than 2 employees using GROUP BY and HAVING

select department_name from departments
inner join employees on departments.department_id = employees.department_id
group by department_name
having count (employee_id) > 2


-- 4 Find average salary per department and show only departments with avg salary above 75000

select department_name, avg (salary) from departments
inner join employees on departments.department_id = employees.department_id
group by department_name
having avg(salary) > 75000

-- 5 Retrieve employees with salary > 80000, department in (2,3,4), and last name not like '%son%'

select * from employees 
where department_id in (2,3,4) and last_name not like '%son%' and salary > 80000

-- 6 Show projects between 2023 and 2024 whose name contains 'System' using WHERE and LIKE

select * from projects
where start_date between '2023-01-01' and '2024-01-01'
and project_name like '%system%'

-- 7 Retrieve employees whose salary is between 70000 and 85000 and first/last name contains 'a' or 'e'

select * from employees 
where salary between 70000 and 80000 and (first_name like '%a%' or last_name like '%a%'
or first_name like '%e%' or last_name like '%e%') 

-- 8 Show each department with maximum salary and exclude departments where max salary equals 90000

select department_name, max (salary) as maximum from departments
inner join employees on departments.department_id =employees.department_id
group by department_name
having max (salary) <> 90000


-- 9 Find employees NOT in departments 1 or 2 and salary between 60000 and 85000

select * from employees
where department_id not in (1,2) and salary between 60000 and 85000

-- 10 Retrieve projects where end date is not '2023-12-31' and project name contains 'App'

select project_name, end_date from projects
where end_date <> '2023-12-31'
and project_name like '%app%'

-- 11 Count employees per department with salary > 65000 and show only groups having more than 3 employees

select department_name, count(employee_id) as total_employees from departments
inner join employees on departments.department_id = departments.department_id
where salary > 65000
group by department_name
having count (employee_id) > 3

-- 12 Find employees in departments 1 or 2 whose first name does not start with J

select first_name, last_name, department_id from employees
where department_id in (1,2) and first_name not like 'J%'



-- 13 Count projects per department starting after 2023-01-01 and show only departments with more than 2 projects

select department_name, count (project_id) as total_projects from departments
inner join projects on departments.department_id = departments.department_id
where start_date > '2023-01-01'
group by department_name
having count (project_id) >2 


-- 14 Show employees whose salary is greater than the average salary of their department

select * from employees e

where salary > ( select avg (salary) from employees em
where e.department_id = em.department_id

) 



select first_name  onoma , 
* from employees as em
inner join departments as  d 

on d.department_id = em.department_id

create view departmentaveragesalary as 
select avg (salary) as average_salary, department_id from employees
group by department_id

select first_name, last_name, salary, department_name from employees
inner join departments on employees.department_id = departments.department_id
inner join departmentaveragesalary on employees.department_id = departmentaveragesalary.department_id
where salary > average_salary




-- 15 Find employees who belong to departments that have at least one project

select first_name, last_name from employees
inner join projects on employees.department_id = projects.department_id 


-- 16 List employees with no matching department (NULL or missing department reference)

select first_name, last_name, department_name from employees
left join departments on employees.department_id = departments.department_id
where departments.department_id is null 

-- 17 Find departments that do not have any employees assigned

select department_name from departments
left join employees on departments.department_id = employees.department_id
where employees.department_id is null 

-- 18 Show employees whose salary is higher than any employee in department 3

select first_name,last_name, salary from employees
where salary > (select min (salary) from employees where department_id =3)

-- 19 Find employees whose salary is lower than all employees in department 2

select first_name, last_name, salary from employees
where salary < (select max(salary) from employees where department_id =2)

-- 20 List projects along with department name using JOIN and filter only active projects (end_date in future)

select project_name, department_name from projects
inner join departments on projects.department_id = departments.department_id
where end_date> getdate()

-- 21 Find employees hired between 2020 and 2023 and salary not equal to 70000 or 80000

select*from employees where hire_date between '2020-01-01' and '2023-12-31'
and salary not in (70000, 80000)

-- 22 Show employees whose first name contains 'o' and last name does not contain 'a', in departments 3 or 4

select first_name, last_name, department_id from employees
where first_name like '%o%' and last_name not like '%a%' and department_id in (3,4)

-- 23 Find departments where employee count is between 2 and 5 using HAVING and BETWEEN logic

select department_name, count (employee_id) as total_employees from departments
inner join employees on departments.department_id = employees.department_id
group by department_name
having count (employee_id) between 2 and 5 

-- 24 Retrieve projects whose name starts with 'C' or 'S' and belong to departments 1, 2, or 3

select project_name, department_id from projects
where(project_name like 'C%'
or project_name like 'S%')
and department_id in (1, 2, 3)

-- 25 Show employees with salary > 75000 and hired after 2021, ordered by salary and department

select * from employees where salary> 75000 and hire_date > '2021-12-31'
order by salary, department_id

-- 26 Find employees whose department is NOT in (1,3,4) and salary between 60000 and 85000

select*from employees where department_id not in (1,3,4)
and salary between 60000 and 85000

-- 27 Show departments and number of projects where project name contains 'Data' or 'Cloud'

select department_name, count(project_id) as total_projects from departments
inner join projects on departments.department_id = projects.department_id
where project_name like '%Data%'
or project_name like '%Cloud%'
group by department_name;

-- 28 Find employees whose salary is equal to the highest salary in the entire table

select first_name, last_name, salary from employees 
where salary = (select max(salary) from employees)

-- 29 Retrieve employees who are not assigned to any project-related department



-- 30 Find departments where the difference between max and min salary of employees is greater than 20000


---cte me employees

with employees_cte as (select*from employees)

select*from employees_cte

with employees_1_3 as (select first_name, last_name, department_id from employees 
where department_id in (1,3))


select * from departments
inner join employees_1_3 on departments.department_id= employees_1_3.department_id

--cte me hire date after 2022 kai cte me hr h it

with employees_2022 as (select*from employees where hire_date > '2022-12-31'),
departments_t as (select * from departments where department_name = 'HR' or department_name= 'IT')

select first_name, last_name, department_name from employees_2022
inner join departments_t on employees_2022.department_id = departments_t.department_id


-- 1.
-- Create a CTE that shows all employees
-- with salary greater than 70000.

with highsalaryemployees as
(select *from employees where salary>70000)

select * from highsalaryemployees



-- 2.
-- Create a CTE that counts employees
-- in each department.

with depemployeecount as
(select count(*) as total_employees ,department_name  from departments
inner join employees on departments.department_id= employees.department_id
group by department_name)

select*from depemployeecount 

-- 3.
-- Create a CTE that calculates the average salary
-- for each department.

with avsa as
(select avg(salary) as average_salary, department_name from departments
inner join employees on departments.department_id = employees.department_id
group by department_name)

select*from avsa


-- 4.
-- Create a CTE that shows employees hired after 2022
-- and join it with departments to show department names.

with e2022 as
(select * from employees
where hire_date > '2022-12-31')

select* from e2022 
inner join departments on e2022.department_id = departments.department_id


-- 5.
-- Create a CTE that shows the highest salary
-- in each department.

with highest as
(select max(salary) as top_salary, department_name from employees
inner join departments on employees.department_id = departments.department_id
group by department_name)

select * from highest

-- 6.
-- Create a CTE that lists employees and their
-- department names, ordered by salary.

with empdep as
(select first_name, last_name, salary, department_name from employees
inner join departments on employees.department_id = departments.department_id)

select* from empdep 
order by salary


-- 7.
-- Create a CTE that counts how many projects
-- belong to each department.

with procount as
(select count (project_id) as total_projects, department_name from departments
inner join projects on departments.department_id = projects.department_id
group by department_name)

select * from procount


-- 8.
-- Create a CTE that shows departments
-- with more than 5 employees.

with count5 as
(select count (employee_id) as total_employees, department_name from departments
inner join employees on departments.department_id = employees.department_id
group by department_name
having count(employee_id) > 5)

select* from count5


-- 9.
-- Create a CTE that calculates the total salary
-- paid in each department.

with depsal as 

(select sum(salary) as total_salary, department_name from employees
inner join departments on employees.department_id = departments.department_id
group by department_name)

select* from depsal


-- 10.
-- Create a CTE that finds employees
-- with the highest salary in the company.

with highest as

(select * from employees
where salary = (select max(salary) from employees))

select * from highest


-- 11.
-- Create a CTE that shows projects
-- with their department names.


with d_projects as 

(select project_name, department_name from projects
inner join departments on projects.department_id = departments.department_id)

select* from d_projects


-- 13.
-- Create a CTE that shows departments
-- with no employees.

with noemp as

(select  department_name from departments
left join employees on departments.department_id = employees.department_id
where employees.department_id is null)

select* from noemp

-- 14.
-- Create a CTE that shows employees
-- whose salary is above their department average.

with depavg as

(select avg(salary) as average,department_id from employees
group by department_id)

select first_name, last_name, salary, department_name from employees
inner join depavg on employees.department_id = depavg.department_id

inner join departments on employees.department_id = departments.department_id
where salary> average




-- 15.
-- Create a CTE that counts projects
-- started after 2023 for each department.

with depproj as

(select count(project_id) as total, department_name from departments

inner join projects on departments.department_id = projects.department_id
where start_date > '2023-12-31'
group by department_name)

select* from depproj


-- 16.
-- Create a CTE that shows the top 5 highest-paid
-- employees with their department names.

with top5 as

(select top 5  first_name, last_name, salary, department_name from employees
inner join departments on employees.department_id = departments.department_id
order by salary desc)

select * from top5

-- 17.
-- Create a CTE that finds the department
-- with the most employees.

with maxdep as
(select top 1 department_name, count(*) as total from departments
inner join employees on departments.department_id = employees.department_id
group by department_name
order by total desc)

select * from maxdep


-- 18.
-- Create a CTE that calculates the minimum,
-- maximum, and average salary of employees.

with salarystats as

(select min(salary) as minimum, max(salary) as maximum, avg(salary) as average from employees)

select* from salarystats



-- 19.
-- Create a CTE that shows each department
-- and the number of projects and employees.

with fl as 
(select department_name, count(project_name) as pr, count(employee_id) as emp from projects
inner join departments on projects.department_id = departments.department_id
inner join employees on departments.department_id = employees.department_id
group by department_name)
select* from fl



-- 20.
-- Create a CTE that finds the employee
-- with the second highest salary.

with secemp as

(select top 1 first_name, last_name, salary from employees
where salary < (select max(salary) from employees)
order by salary desc)

select* from secemp

---create cte for each depid count how many work

with total as

(select department_name, count(employee_id) as no_emp from departments
inner join employees on departments.department_id = employees.department_id
group by department_name)


select* from total
where no_emp >10

---with case when make a salary_status. if between 60-80k medium, if 70 and below low, if 80 and above high


with performance as
(select first_name, last_name, salary,
case when salary between 60000 and 80000 then 'medium'
when salary <= 70000 then 'low'
else 'high'
end as salary_performance
from employees)

select*from performance
where salary_performance = 'medium'

--make 2 cte. 1st containing employees with hire date 2022. 2nd projects having end date before 2023 
--make joins with departments

with hire2022 as

(select * from 
employees where 
hire_date 
between '12-31-2022' and '01-01-2022')
,
bf2023 as (
select * 
from projects
where end_date < '12-31-2023')

select * from hire2022
inner join departments on hire2022.department_id = departments.department_id
inner join bf2023 on hire2022.department_id = bf2023.department_id

--na tsekarw an einai swsto

-- bring employees working on IT

select * from employees
inner join departments on employees.department_id = departments.department_id
where department_name = 'IT'

---bring employees where hire date 2022 or work on hr

select first_name, last_name, department_name, hire_date from employees
inner join departments on employees.department_id = departments.department_id
where hire_date between '12-31-2022' and '01-01-2022' or department_name = 'HR'

---count average salary per department

select avg(salary) as average, department_name from employees
inner join departments on employees.department_id = departments.department_id
group by department_name

--show departments only if having more than 11 employees

select department_name, count(employee_id) from employees
inner join departments on employees.department_id = departments.department_id
group by department_name
having count (employee_id) > 11

--make a quere that counts employees having 'a' to their name.

select count(employee_id) as total_employees from employees
where first_name like '%a%' or last_name like '%a%'


-- bring projects that have start date before 2022 and are assigned to IT

select * from projects
inner join departments on projects.department_id = departments.department_id
where start_date < '12-31-2022' and department_name = 'IT'

--bring the highest salary on each department.

select max(salary) as highest_salary, department_name from employees
inner join departments on employees.department_id = departments.department_id
group by department_name

--bring employees having salary greater than the average salary 

select first_name, last_name, salary from employees
where salary > (select avg(salary) from employees)

--find who has the best salary

select top 1 
first_name, last_name, salary from employees
order by salary desc

--find the second highest paid

select first_name, last_name, salary from employees
where salary = (select max(salary) from employees where salary < (select max(salary) from employees))

--find employees with salary less than the highest paid

select top 1 * from employees
where salary < (select max(salary) from employees)
order by salary desc

--make a cte where employees having hire date 2023 or having more than 80000 and join it with departments to show which departments they work to

with employee23 as 
(select first_name, last_name, salary,hire_date, department_id from employees
where hire_date between '2023-01-01' and '2023-12-31' or salary >80000)

select first_name, last_name, salary, hire_date, department_name from employee23
inner join departments on employee23.department_id = departments.department_id

--select employees that work on dept id 2 or 3 or 4 

select first_name, last_name, department_id from employees
where department_id in (2,3,4)





