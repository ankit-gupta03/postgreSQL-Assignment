-- Team
create table team(
	team_id integer,
	teamname varchar(20),
	manager integer,
	foreign key (manager) references members(member_id)
)