```
Show how many patients have a birth_date with 2010 as the birth year.

Table : patients 
primary key icon	patient_id	INT
first_name	TEXT
last_name	TEXT
gender	CHAR(1)
birth_date	DATE
city	TEXT
primary key icon	province_id	CHAR(2)
allergies	TEXT
height	INT
weight	INT


https://www.sql-practice.com/

```

SELECT COUNT(patient_id) AS total_patients 
FROM patients 
WHERE birth_date BETWEEN '2010-01-01' AND '2010-12-31';