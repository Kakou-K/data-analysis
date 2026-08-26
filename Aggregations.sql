---aggregations


select avg(salary) from employees

select max(salary) from employees

select min(salary) from employees

select count(salary) from employees


select sum(salary) from employees



select max(salary) from employees












select * from employees
where salary = (

select max(salary) from employees

)










select * from employees
where salary = (

90000

)






---to athrisma twn salary


--OTI MPAINEI STO SELECT, EKTOS TO AGGREGATION, PREPEI NA MPEI KAI STO GROUP BY 
select department_id,sum(salary) from employees
GROUP BY department_id



select count(first_name),count(last_name),count(salary) , count(*) from employees



select count(department_id),count(department_name),count(*)  from departments