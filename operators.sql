---distinct 
select * from  employees


select * from employees


select distinct department_id from employees



---order by 
select * from employees
order by salary desc


select * from employees
order by first_name  asc

select * from employees
order by first_name  desc


---order by 
select * from employees
order by salary asc


select * from employees
order by salary 




---in/not in 

select * from employees
where department_id = 1 or department_id =3 or department_id = 4


select * from employees
where department_id in (1,3,4)




select * from employees
where department_id not in (1,3,4)


select * from employees
where salary >=60000 and salary <= 80000



select * from employees
where salary between 60000 and 80000


---alias
select fstnm as onoma, last_name as epitheto 
from employees
where first_name = 'bob'


----top 

select * from employees


select top 5 * from employees


select top 1 * from employees
order by salary desc


select top 1 * from employees
order by salary desc







select * from employees

--- Retrieve all employees who were hired after January 1, 2022 and have a salary greater than 70,000.

-- 10
-- Retrieve all employees who were hired between January 1, 2020 and December 31, 2023 and belong to department 3.

-- 11
-- Retrieve all employees who are not assigned to any department and have a salary greater than 65,000.

-- 12
-- Retrieve all employees who are assigned to a department and have a salary less than 80,000.

-- 13
-- Retrieve all employees whose first name contains the letter 'a' and whose last name ends with the letter 'n'.

-- 14
-- Retrieve all employees whose first name starts with either 'J' or 'M'.



select * from employees where hire_date > '2022-01-01' and salary> 70000


select * from employees where hire_date between '2020-01-01' and '2023-12-31' and department_id= 3

select * from employees where department_id is null and salary> 65000


select * from employees where department_id is not null and salary< 80000

select * from employees where first_name like '%a%' and last_name like '%n'

select * from employees where first_name like 'J%' or first_name like 'M%'

select* from employees where (salary> 70000 and department_id= 3 ) or hire_date > '2023-01-01'

select first_name, last_name, salary from employees where department_id is null or salary> 80000 or first_name like 's%'



-- 15
-- Retrieve all employees who have a salary greater than 70,000 and do not belong to department 1.

select * from employees where salary> 70000 and department_id <>1 

---17. Get unique department IDs from employees.
--18. Get unique salaries.
--19. Unique department names.
----20. Unique hire dates.
---21. Order employees by salary ascending.
--22. Order employees by salary descending.
---23. Order by department_id then salary DESC.
--24. Order projects by start_date.
--25. Order employees by last_name.
--26. Get first 5 employees.
--27. Get top 10 highest paid employees.
--29. Get 3 lowest salaries.
--31. Employees with salary > 70000.
--32. Employees with salary < 65000.
--33. Employees hired after 2022.
--34. Employees in department 1.



select distinct department_id from employees

select distinct salary from employees

select distinct department_id from employees

select distinct hire_date from employees

select * from employees order by salary asc --or better--  

select first_name, last_name, salary from employees order by salary asc

select first_name, last_name, salary from employees order by salary desc

select first_name, last_name, department_id from employees order by department_id, salary desc 

select *from projects order by start_date --or

select project_name from projects order by start_date

select first_name, last_name from employees order by last_name, first_name

select top 5* from employees

select top 10 first_name, last_name, salary from employees order by salary desc, last_name

select top 3 first_name, last_name, salary from employees order by salary,last_name

select first_name, last_name , salary from employees where salary> 70000

select first_name, last_name , salary from employees where salary< 65000

select first_name, last_name, hire_date from employees where hire_date> '2022-12-31'

select first_name, last_name from employees where department_id= 1


