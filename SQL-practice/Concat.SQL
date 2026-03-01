'''
Show first name and last name concatinated into one column to show their full name.

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

'''

SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM patients;
