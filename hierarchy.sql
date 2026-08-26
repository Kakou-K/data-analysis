select * from employees
where  department_id = 1


--1 where : panta meta to from se seira paei to where
--2 group by:  an exoume group by kai where, prwta tha mpei to where kai meta to group by
--3 having: mpainei katw apo to group by
--4 order by: mpainei panta sto telos.



select department_id,count(*) from employees
group by department_id



--an eixa where 

select department_id,count(*) from employees
where department_id in (1,3)
group by department_id



--an eixa having, tha empaine katw apo to group by
select department_id,count(*) from employees
group by department_id
having count(*)  > 10

--an ithela kai where kai group by kai having 

select department_id,count(*) from employees
where first_name not like '%a%'
group by department_id
having count(*)  > 3



--order by mpainei panta ma panta sto telos oti kai na exeis

select department_id,count(*) from employees
where first_name not like '%a%'
group by department_id
having count(*)  > 2
order by department_id desc




select department_id,count(*) from employees
where salary >  (
select min(salary) from employees 

)
group by department_id

having count(*)  > 2
order by department_id desc

