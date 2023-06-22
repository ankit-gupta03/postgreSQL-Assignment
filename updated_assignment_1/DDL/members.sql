-- Members
create table members(
	member_id integer primary key,
	firstname varchar(20),
	lastname varchar(20),
	member_type_id integer,
	foreign key (member_type_id) references member_type(member_typeid),
	join_date date,
	coach_id integer,
	foreign key(coach_id) references members(member_id),
	team_id integer,
	gender varchar(10),
	phone bigint
)