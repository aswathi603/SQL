```
Show first name, last name, and gender of patients whose gender is 'M'

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




```
Select first_name, last_name ,gender from patients where gender like 'M%';