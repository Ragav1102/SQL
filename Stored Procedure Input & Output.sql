use hospital;

select * from employees;

-- STORED PROCEDURE INPUT


delimiter ?
create procedure get_employee(in id int,e_age int)
begin
select * from employees
where e_id = id and age = e_age;
end ?
delimiter ;

call get_employee(3,23);

drop procedure get_employee;


-- STORED PROCEDURE OUTPUT


delimiter ?
create procedure get_employee_output(out e_count int)
begin
select count(age)
into e_count
from employees;
end ?
delimiter ;

call get_employee_output(@e_count);
select @e_count as count;

drop procedure get_employee_output;