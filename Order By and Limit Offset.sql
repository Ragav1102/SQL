use hospital;

select * from employees;

-- ORDER BY

select * from employees 
order by name desc;

select * from employees 
order by joining_date desc , name;


-- LIMIT


select * from employees 
order by salary desc
limit 3;

select * from employees
order by salary
limit 1;

select * from employees
limit 2,4;
-- FIRST OFFSET,SECOND LIMIT

select * from employees
limit 4,1