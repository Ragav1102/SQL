show databases;


create database banglore;

use banglore;

Drop Database banglore;

alter database read only = 0;

create table Employee(
    emp_id int,
    emp_name varchar(20),
    saalary decimal(7,2),
    joining date
);

SELECT * from Employee;

rename table Employee to course;

SELECT * from course;

alter table course add phone_number varchar(10);
alter table course add email varchar(50);

alter table course rename column email to e_mail;

alter table course modify column emp_name varchar(30) after emp_id;

alter table course drop column e_mail;



create database ragav;

USE ragav;

alter database read only=0;

create table family(
    family_name varchar(20),
    age int,
    location varchar(30),
    ph_number varchar(10)
);

select * from family;

rename table family to bonds;

select * from bonds;

rename table bonds to family;

alter table family add course_name varchar(20);

alter table family rename column family_name to f_name;

alter table family modify column  location varchar(40) first ;

alter table family drop column course_name;
alter table family add course varchar(29);
insert into family value("paalacode","ragav",22,"1234567890","data anay");


show databases;

create database megan;

create table mental(
   id int,
   f_name varchar(20),
   l_name varchar(20),
   age int,
   place varchar(30),
   salary decimal(6,2)
);
rename table mental to meganthan;
select * from meganthan;
rename table meganthan to mental;
select * from mental;
alter table meganthan add location varchar(30);

create database jaddu;
use jaddu;
create table cricket(
   id int,
   f_name varchar(20),
   l_name varchar(20),
   age int,
   place varchar(30),
   salary decimal(6,2)
);
select * from cricket;
alter table cricket add location varchar(20);
alter table cricket rename column f_name to firsr_name;
alter table cricket modify column l_name varchar(30);

insert into cricket value (001,"Ravindra","jadeja",38,"Rajasthn",3300000.00);