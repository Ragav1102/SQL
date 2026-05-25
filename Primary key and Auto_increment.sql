use constraints;


-- PRIMARY KEY


create table trans(
  t_id int primary key,
  amt decimal(5,2)
);

insert into trans value(1,544.32);

insert into trans value(244.32);
insert into trans value(1,444.32);
select * from trans;
 
drop table trans; 

create table trans(
  t_id int ,
  amt decimal(5,2)
);

insert into trans value(1,544.32);

insert into trans(amt) value(244.32);

insert into trans value(1,444.32);

select * from trans;
 
drop table trans; 

alter table trans add constraint primary key (t_id);


-- AUTO_INCREMENT


create table trans(
  t_id int primary key auto_increment ,
  amt decimal(5,2)
);

insert into trans value(1,544.32);

insert into trans(amt) value(232.32);

select * from trans;
 
drop table trans; 

alter table trans  auto_increment=1000;


create table trans(
  t_id int ,
  amt decimal(5,2)
);

insert into trans value(1,544.32);

insert into trans(amt) value(230.32);

select * from trans;
 
drop table trans; 

alter table trans add constraint primary key (t_id);
 
alter table trans modify t_id int auto_increment;
