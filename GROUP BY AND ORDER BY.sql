-- GROUP BY --

SELECT *
FROM public.employee_demographics;


-- GROUP BY ---
SELECT gender
FROM public.employee_demographics
GROUP BY gender;

--Error as first_name is not an a aggregate function 
SELECT first_name  
FROM public.employee_demographics
GROUP BY gender;

--- AVERAGE ---
SELECT gender, AVG(age)
FROM public.employee_demographics
GROUP BY gender;

SELECT occupation, salary  
FROM public.employee_salary
GROUP BY occupation, salary;


--- MAX ---
SELECT gender, MAX(age)
FROM public.employee_demographics
GROUP BY gender;



--- SUM ---
SELECT gender, SUM(age)
FROM public.employee_demographics
GROUP BY gender;



--- MIN  ---
SELECT gender, MIN(age)
FROM public.employee_demographics
GROUP BY gender;


--- COUNT ---
SELECT gender, COUNT(age)
FROM public.employee_demographics
GROUP BY gender;

--- HAVING VS WHERE ---

-- GROUP BY AND WHERE CLAUSE TOGETHER
-- AGGREGATE FUNCTION IN WHERE CLAUSE IS NOT ALLOWED 
SELECT gender, AVG(age) 
FROM public.employee_demographics
WHERE AVG(age) > 40
GROUP BY gender;


SELECT gender, AVG(age) 
FROM public.employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;


SELECT *
FROM public.employee_salary;

SELECT occupation, AVG(salary)
FROM public.employee_salary
WHERE occupation LIKE '%manger%'
GROUP BY occupation
HAVING AVG(salary) > 75000;



-- ORDER BY ---
SELECT *
FROM public.employee_demographics;


-- BY DEFAULT IT IS IN ASC ORDER 
-- 1 ---
SELECT *
FROM public.employee_demographics
ORDER BY first_name;

-- 2 ---
SELECT *
FROM public.employee_demographics
ORDER BY first_name ASC;

-- 1 AND 2 WILL HAVE SAME OUTPUT AS IT WILL AUTOMATICALLY SORT IT IN ASC

SELECT *
FROM public.employee_demographics
ORDER BY first_name DESC;


SELECT *
FROM public.employee_demographics
ORDER BY gender;


SELECT *
FROM public.employee_demographics
ORDER BY gender ,age;


SELECT *
FROM public.employee_demographics
ORDER BY gender ,age DESC;

-- IMPORTANT TO CHECK THE COULMN POSITION AS IN THIS 
--  AS GENDER BECOME USELESS
SELECT *
FROM public.employee_demographics
ORDER BY age, gender;


-- BY COULMN POSITION  NOT RECOMMEND-- 
SELECT *
FROM public.employee_demographics
ORDER BY 5,4;


