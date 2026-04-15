```
Show all columns for patients who have one of the following patient_ids:
1,45,534,879,1000

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


SELECT *
FROM patients
WHERE
  patient_id IN (1, 45, 534, 879, 1000)