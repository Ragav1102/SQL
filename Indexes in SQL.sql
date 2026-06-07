use  hospital;

select *  from employees;

show indexes from employees;

create index name_idx
on employees (name);

alter table employees
drop index name_idx;

create index name_manager_id
on employees(name,manager_id);

alter table employees
drop index name_manager_id;