--Select all
SELECT * FROM employee_demographics;

--PEMDAS - penrentheis expression multiplication division addition substraction

--select certain columns
SELECT first_name,
last_name, 
birth_date,
age
FROM employee_demographics;

--select only one columns
SELECT first_name
FROM employee_demographics;

--Distinct
SELECT DISTINCT first_name , gender
FROM public.employee_demographics;


