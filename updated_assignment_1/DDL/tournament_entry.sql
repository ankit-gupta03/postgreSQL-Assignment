-- Tournament Entry
create table tournament_entry(
	member_id integer,
	foreign key(member_id) references members(member_id),
	tournament_id integer,
	foreign key(tournament_id) references tournament(tour_id),
	tournament_year integer
)