```

Show first name of patients that start with the letter 'C'


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

Source : https://www.sql-practice.com/

```



SELECT first_name FROM patients WHERE first_name LIKE 'C%';