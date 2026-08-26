----union 
select first_name,last_name,salary from employees
where department_id = 1

union

select first_name,last_name,salary from employees
where department_id = 2



----union 
select first_name,last_name,salary from employees
where department_id = 1

union

select '',last_name,10 from employees
where department_id = 2



----views 
create view employees_1_3 as  

select first_name,last_name,department_id,hire_date from employees
where department_id in (1,3)


drop view employees_1_3


select * from employees_1_3


--The core difference between a Table and a View in SQL  is that a Table physically stores raw data
--on a hard drive,
--while a View is a virtual table that stores a saved SQL query and generates data dynamically on demand.