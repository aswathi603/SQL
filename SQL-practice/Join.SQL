```
Show first name, last name, and the full province name of each patient.

Example: 'Ontario' instead of 'ON'


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

table: provinces_names
primary key icon	province_id	CHAR(2)
province_name	TEXT



https://www.sql-practice.com/

```

SELECT pa.first_name ,pa.last_name, pr.province_name
FROM patients pa 
JOIN province_names pr
ON pa.province_id = pr.province_id;