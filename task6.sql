CREATE TABLE membership (
	member_name VARCHAR(20),
	member_count INT PRIMARY KEY	
)
insert into membership values('Basic',2);
insert into membership values('Premium',10);
insert into membership values('Moderate',30);
insert into membership values('Moderate',40);
insert into membership values('Basic',70);
insert into membership values('Basic',90);

SELECT member_name, COUNT(member_name) as member_count from membership GROUP BY member_name; 