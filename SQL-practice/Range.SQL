```
Show first name and last name of patients that weight within the range of 100 to 120 (inclusive)

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


Select first_name, last_name from patients where weight between 100 and 120;