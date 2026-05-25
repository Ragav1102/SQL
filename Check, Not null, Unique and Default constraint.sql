create database constraints;
use constraints;


-- UNIQUE CONSTRAINT


create table products(
   p_id int,
   p_name varchar(20),
   p_price decimal(6,2)
);
insert into products values(1,"oreo",300.30);
insert into products values(2,"oreo",400.30);
drop table products;
alter table products add constraint unique (p_name);
select * from products;


-- NOT NULL CONSTRAINT-- 
 
 
 create table productts(
   p_id int,
   p_name varchar(20),
   p_price decimal(6,2)
);
insert into productts values(1,"oreo",300.45);

insert into productts(p_id,p_price) values(2,400.33 );

select * from productts;

drop table productts;

alter table productts modify p_name  varchar(20) not null;


-- CHECK CONSTRAINT


 create table productts(
   p_id int,
   p_name varchar(20),
   p_price decimal(6,2),
   constraint check_price check (p_price <400)
);
insert into productts values(1,"oreo",300.45);

insert into productts values(2,"fruit",400.33 );

select * from productts;

drop table productts;

alter table productts drop constraint check_price;

alter table productts add constraint check_price check (p_price <400);


-- DEFAULT CONSTRAINT


 create table productts(
   p_id int,
   p_name varchar(20),
   p_price decimal(6,2) 
);
insert into productts(p_id,p_name) values(1,"oreo");

insert into productts values(2,"frit",300.45);

insert into productts(p_id,p_name) values(3,"jam");


select * from productts;

drop table productts;

alter table productts alter p_price set default 10;
