use hospital;

select * from bills;

alter table bills add bill_date date;

update bills 
set bill_date = '2025-12-22'
where id = 3;

insert into bills values(4,'ragav',44000,'2025-12-26');

insert into bills values(5,'john',44000,'2025-12-26');

select sum(amt), bill_date from bills
group by bill_date
having sum(amt) > 50000;

select count(amt), name from bills
group by name;
