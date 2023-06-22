-- Tournament
create table tournament (
	tour_id integer primary key,
	tour_name varchar(20),
	tour_type varchar(20),
	country varchar(20),
	is_open boolean
)