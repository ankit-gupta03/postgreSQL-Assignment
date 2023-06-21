create table members (
	first_name VARCHAR(20),
	member_id INT PRIMARY KEY,
	phone_number bigint
)

INSERT INTO members values ('Animesh', 1,9324564721);
INSERT INTO members values ('Rahul', 2,9124564721);
INSERT INTO members values ('Amesh', 3,9215647213);
INSERT INTO members values ('Rohit', 4,NULL);
 
UPDATE members
SET phone_number=8932212342 WHERE phone_number is null
SELECT * from members