use hospital;

select * from employees;

create view employees_dta as
select name,salary from employees;

select * from employees_dta;

create view Report_view as
select a.e_id, a.name, a.salary, b.name as "Manager_ID" from employees a
inner join employees b
on a.manager_id = b.e_id;

select * from Report_view;