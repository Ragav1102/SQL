use hospital;

select * from employees;

-- BEFORE INSERT

delimiter %

create  trigger before_insert
before insert on employees
for each row
begin
   set new.salary = ifnull (new.salary, 25000) ;
end %

delimiter ;

insert into employees (e_id,name,age) values (1,'raja',55);

drop trigger before_insert;

-- BEFORE UPDATE 

delimiter &

create trigger before_update
before update on employees
for each row
begin
   set new.salary = old.salary * 1.10;
end &

delimiter ;

update  employees 
set salary = 20000
where e_id = 1;

select * from employees;

-- BEFORE DELETE

delimiter $

create trigger before_delete
before delete on employees
for each row
begin
  insert into expences values (333,old.name, old.salary);
end $
  
delimiter ;

delete from employees 
where e_id = 1;

select * from expences;

-- AFTER DELETE
