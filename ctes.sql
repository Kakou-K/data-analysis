---CTEs einai common table expression 
-- einai temporary result set sql

with sql_test as (
select * from employees
)


select * from sql_test s
inner join departments d
on d.department_id = s.department_id


with employees_a as (
select * from employees
where first_name like 'a%'
),

result as (select first_name,last_name,department_name from employees_a a
inner join departments d 
on d.department_id = a.department_id

)
select * from result