-- WHERE CLAUSE
SELECT * 
FROM public.employee_demographics 
WHERE first_name = 'Leslie'
;

-- EQUAL TO 
SELECT * 
FROM public.employee_demographics
WHERE gender = 'Female'
;


-- NOT EQUAL TO 
SELECT * 
FROM public.employee_demographics
WHERE gender != 'Female'
;



-- LOGICAL OPERATORS --> AND , OR
SELECT *
FROM public.employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT  gender = 'male'
;

SELECT *
FROM public.employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age>55
;

--L

-- COMPARING OPERATOR

-- GREATER THAN
SELECT * 
FROM public.employee_salary
WHERE salary > 50000
;


-- GREATER THAN EQUAL TO 
SELECT * 
FROM public.employee_salary
WHERE salary >= 50000
;

-- LESS THAN 
SELECT * 
FROM public.employee_salary
WHERE salary < 50000
;


-- LESS THAN EQUAL TO
SELECT * 
FROM public.employee_salary
WHERE salary <= 50000
;
