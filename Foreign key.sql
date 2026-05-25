create database customer;

use customer;

create table customers(
   c_id int primary key auto_increment,
   c_name varchar(30),
   age int
);

insert into customers(c_name,age)
values("Ram",45),("Raj",40);

select * from customers;


-- FOREIGN KEY TABLE

create table trans (
    t_id int primary key auto_increment,
    amount decimal(7,2),
    customer_id int,
    foreign key (customer_id)
    references customers(c_id)
);

select * from trans;

insert into trans (amount, customer_id)
values (3000,1),(4000,2);

alter table trans drop foreign key trans_ibfk_1

alter table trans add constraint fk_c_id foreign key (customer_id) references customers(c_id);