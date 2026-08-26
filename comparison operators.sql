select * from employees

select first_name,last_name from employees


---where

--comparison operators (=, !=,<> , <, >, <=, >=)

--find john
select * from employees
where first_name = 'john'


 -- not john
select * from employees
where first_name <> 'john'

select * from employees
where first_name != 'john'


--salaries above 70k

select * from employees
where salary > 70000

select * from employees
where salary >= 70000


--- logical operators (and,or)


----find employees who earn more than 70k and work at dept id 2


select * from employees
where salary >= 70000 and department_id = 2


select * from employees
where salary >= 70000 
or 
department_id = 2 and employee_id < 5



---john or jack

select * from employees
where first_name = 'jack' or first_name ='john'



select * from employees
where first_name = 'jack',or 'vasilis','nikos'



select * from employees
where first_name = 'Bob' or first_name = 'Alice'
or first_name = 'Daniel'


--me to LIKE PSXNOUME SUGKEKRIMENOUS XARAKTIRES MESA SE ENA TEXT
---- ta pososta einai oi alloi xaraktires...


select * from employees
where first_name like 'a%'

select * from employees
where first_name like '%a'






