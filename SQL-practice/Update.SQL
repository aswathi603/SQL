```
Update the patients table for the allergies column.
If the patient's allergies is null then replace it with 'NKA'

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

UPDATE patients SET allergies = 'NKA' WHERE allergies IS NULL;