create database vijay;
use vijay;
create table employees(
   emp_id int,
   emp_name varchar(20),
   place varchar(30),
   joining date
);
 
 insert into employees values(1,"ragav","dpi","2026-08-11"),(2,"Maghesh","tutu","2026-07-29");
 insert into employees(emp_id,place) values(3,"pal");
select emp_id,place from employees;
 select emp_id as id,place as location from employees;
 select * from employees where emp_id=1;
select emp_id,place from employees where emp_id=1;
--   set sql_safe_updates=0;
 update employees set joining="2026-12-11" where emp_id=3;
 update employees set place=null where emp_id=2;
 select * from employees;
 delete  from employees;
 set autocommit=0;
 commit;
 rollback;
 
 create database time_cal;
 use time_cal;
 create table summa(
   nall date,
   nallneram datetime,
   neram time
 );
 insert into summa values(current_date(),now(),current_time());
 select * from summa;