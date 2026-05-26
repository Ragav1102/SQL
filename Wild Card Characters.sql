use hospital;

select * from employees;
 
alter table employees add joining_date date; 

update employees set joining_date='2026-07-11' where e_id=1;

update employees set joining_date='2023-07-21' where e_id=2;

update employees set joining_date='2022-07-23' where e_id=3;

update employees set joining_date ='2026-5-16' where e_id=4;

update employees set joining_date ='2022-7-11' where e_id=5;

select * from employees where name like "%a";

select * from employees where joining_date like "2023%";

select * from employees where joining_date like "____-07-11";

select * from employees where name like "_agav";

select * from employees where name like "_a%";

select * from employees where name like "__g%";

select * from employees where joining_date like "____-07-%";


