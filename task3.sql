create table tournament(
	first_name varchar(40) not null,
	last_name varchar(20) not null,
	membership_type varchar(40) not null,
	coach_name varchar(40) not null
)

insert into tournament(first_name,last_name,membership_type,coach_name) values ('Rohit','Goyal','Full','MS Dhoni');
insert into tournament(first_name,last_name,membership_type,coach_name) values ('Mohit','Soni','Full','Ravi Sharma');
insert into tournament(first_name,last_name,membership_type,coach_name) values ('Rahul','Sharma','Affiliated','Sachin Gupta');
insert into tournament(first_name,last_name,membership_type,coach_name) values ('Shiva','Goel','Associate','Ravi Shastri');


SELECT *
FROM tournament
ORDER BY first_name DESC;

SELECT *
FROM tournament
WHERE membership_type = 'Full' and coach_name = 'MS Dhoni';