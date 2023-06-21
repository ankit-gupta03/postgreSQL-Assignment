-- Data Definition Language (DDL)
create table hospital(
	hospital_id int primary key,
	name varchar(100) not null,
	contact_number varchar(20) not null
)

create table patient (
	patient_id int primary key,
	hospital_id integer references hospital(hospital_id),
	name varchar(100) not null,
	age integer not null,
)
drop table patient;
drop table hospital

-- Data Manipulation Language (DML)

insert into hospital values(1,'Mohit','9127845612');
insert into hospital values(2,'Rohit','9467841212');
insert into hospital values(3,'Devanshu','6237845612');
insert into hospital values(4,'Dhruv','8937845612');

insert into patient values(1023,1,'Rahul',21);
insert into patient values(1024,2,'Babu Bhaiya',22);
insert into patient values(345,3,'Shyam',23);
insert into patient values(456,4,'Ram',24);


UPDATE hospital
SET contact_number = 8972312345
WHERE name = 'Mohit';

DELETE FROM patient WHERE name='Ram'

-- Data Query Language (DML)
Select * from hospital
Select * from patient
	