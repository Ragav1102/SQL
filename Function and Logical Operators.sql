create database hospital;

use hospital;

create  table employees(
   e_id int primary key auto_increment,
   name varchar(30),
   age int not null,
   salary decimal(7,2)
);

drop table employees;

describe employees;


-- FUNCTIONS


insert into employees(name,age,salary) values('ragav',23,20000);

insert into employees(name,age,salary) values('maghesh',21,25000);

insert into employees(name,age,salary) values('mega',23,20000);

insert into employees(name,age,salary) values('dravid',22,22000);

insert into employees(name,age,salary) values('booba',26,26000);

select * from employees;

select count(name) as Name from employees where age>21;

select max(salary) as HighestSalary from employees ;

select min(age) as youngest from employees;

select sum(salary) as Total from employees where age >22;

select avg(age) as AverageAge from employees;

select concat(name,"-",e_id) as username from employees;


-- LOGICAL OPERATORS

select * from employees;

-- AND

select * from employees where age>21 and salary<25000;

-- OR

select * from employees where age>22 or salary=25000;

-- NOT

select * from employees where not age=23;

-- BETWEEN

select * from employees where age between 22 and 25;

-- IN

select * from employees where salary in(20000,26000);

