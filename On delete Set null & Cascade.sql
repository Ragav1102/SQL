use hospital;

select * from bills;

alter table bills
add column doctor_id int;

update bills
set doctor_id = 4
where id = 3;

ALTER TABLE bills
ADD CONSTRAINT fk_doctor_id
FOREIGN KEY (doctor_id)
REFERENCES employees(e_id)
ON DELETE SET NULL;

ALTER TABLE bills
ADD CONSTRAINT fk_doctor_id
FOREIGN KEY (doctor_id)
REFERENCES employees(e_id)
ON DELETE CASCADE;

select * from employees;

delete from employees
where e_id = 1;

alter table bills
drop constraint fk_doctor_id;