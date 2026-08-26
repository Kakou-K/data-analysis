------subqueries, ta subqueries einai queries mesa se alla queries
---- scalar subqueries epistrefoun 1 timi




---tous employeees pou pairnoun panw apo to meso oro misthon tis stilis salary

select avg(salary) from employees

select * from employees
where  salary > 75060.000000

-----to mesa query trexei prwto, paragei ena arithmo kai meta trexei to ekso query
-----ti fernei to mesa query, ti perimenei to where

select * from employees
where salary > (

select avg(salary)  from employees


)



----thelw na mou fereis autous pou doulevoun sto IT

select * from employees

where department_id = (
select department_id from departments
where department_name = 'IT'


)




select * from employees

where department_id = (
3

)