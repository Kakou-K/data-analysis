-----case when 
select first_name,last_name,salary,
case 
when salary > 70000 then 'high salary'
else 'low salary'
end salary_performance_status
from employees



--multiple when

select first_name,last_name,salary,
case 
when salary > 90000 then 'very high salary'
when salary between 85000 and 90000 then 'high Salary'
when salary > 70000 and salary < 85000 then 'medium'
else 'Low Salary'
end as salary_performance


from employees



---ftiakse mia stili bonus%
---panw 80000 na paroun 20%
--osoi 7000 and 80000 na paroun 10%
--- osoi pairnoun katw apo 70000 na paroun 0

select first_name,last_name,salary,
case 
when salary > 80000 then (salary * 0.2) + salary
when salary between 70000 and 80000 then  (salary * 0.1) + salary
else 0
end as bonus


from employees



select first_name,last_name,salary,
case 
when salary > 80000 then 0.2
when salary between 70000 and 80000 then  (salary * 0.1) + salary
else 0
end as bonus


from employees


select first_name from employees 

where first_name like 'a%'




select first_name, last_name, salary,  
case
when first_name like 'a%' then 'starts with a'
else 'dont start with a'
end as status

from employees


select  first_name, last_name,
case

when hire_date between '2022-01-01' and '2022-12-31'
then 'hired in 2022'
else 'other'

end as hire22
 from employees

 select first_name, last_name, salary,
 case

 when salary>90000 then 'high'
 when salary between 80000 and 90000 then 'mid'
 else 'low'
 end as salary_cat 
 from employees


