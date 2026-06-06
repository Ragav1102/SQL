use hospital;

create table bills(
   id int primary key auto_increment,
   name varchar(30),
   amt decimal(8,2)
);

drop table bills;

insert into bills (name,amt)values ('ragav',40000);

insert into bills (name,amt)values ('don',30000);

insert into bills (name,amt)values ('joe',50000);

select * from bills;

create table expences(
    id int primary key auto_increment,
   name varchar(30),
   amt decimal(8,2)
);

insert into expences (name,amt)values ('ram',46000);

insert into expences (name,amt)values ('error',31000);

insert into expences (name,amt)values ('romeo',10000);

select * from expences;

-- UNION

select * from bills
union
select * from expences;

select name,salary from employees
union
select name,amt from expences;

-- UNION ALL

select name,salary from employees
union all
select name,amt from expences;