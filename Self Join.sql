use hospital;

select * from employees;

alter table employees
add manager_id int;

update employees
set manager_id = 6
where e_id=8;

update employees
set manager_id = 1
where e_id=10;

update employees
set manager_id = 3
where e_id=5;

-- SELF JOIN

select * from employees a
inner join employees b
on a.manager_id = b.e_id;

select a.e_id, a.name, a.salary, b.name as "Manager_ID" from employees a
inner join employees b
on a.manager_id = b.e_id