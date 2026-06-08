use hospital;

select * from employees;

select avg(salary),manager_id from employees
group by manager_id with rollup;

SELECT
    name,
    salary,
    joining_date,
    ROW_NUMBER() OVER (ORDER BY joining_date) AS 'Row_Number',
    RANK() OVER (ORDER BY joining_date) AS 'Rank',
    DENSE_RANK() OVER (ORDER BY joining_date) AS 'Dense_Rank'
FROM employees;

SELECT
      name,
      salary,
      joining_date,
      ROW_NUMBER() OVER(PARTITION BY manager_id ORDER BY joining_date) AS 'New row'
FROM employees;