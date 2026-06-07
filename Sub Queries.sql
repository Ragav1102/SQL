use hospital;

select * from employees;

update employees
set name = "john"
where e_id = 6;

select * from employees
where salary > (select avg(salary) from employees);

select e_id,name,salary from employees
where manager_id in (select e_id from employees where name = "mega");

select e_id,name,salary from employees
where manager_id in (select e_id from employees where name = 'mega' or name = 'ragav');

select e_id,name,salary from employees 
where salary in (select salary from employees where salary =22000);