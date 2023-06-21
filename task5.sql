create table tournament
(
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	tournament_type VARCHAR(50),
	type_of_medal VARCHAR(50),
	medal_year INT PRIMARY KEY NOT NULL
)

select * from tournament
insert into tournament values('James', 'Bolt', 'Open', 'Silver',2020);
insert into tournament values('Milkha', 'Singh', 'Knockout', 'Gold',2021);
insert into tournament values('P.T', 'Usha', 'Round Robin', 'Gold',2022);

select first_name, last_name, tournament_type
from tournament
where type_of_medal = 'Gold' and medal_year = '2022'