use constraints;

select * from trans;

create table trans(
  t_id int primary key,
  amt decimal(5,2),
  c_id int
);

drop table trans;

insert into trans values(1,300.20,1),(2,400,1),(3,299,2),(4,300,null);


create table customers(
   c_id int primary key auto_increment,
   c_name varchar(30)
);

insert into customers values (1,"don"),(2,"kechak"),(3,"mannu");

select * from customers;

-- INNER JOIN

select * from trans inner join customers on trans.c_id = customers.c_id;

-- LEFT JOIN

select * from trans left join customers on trans.c_id = customers.c_id;

-- RIGHT JOIN

select * from trans right join customers on trans.c_id = customers.c_id
