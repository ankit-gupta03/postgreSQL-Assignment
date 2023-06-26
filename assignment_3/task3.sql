-- Task 3

create or replace function count_tournament_year(tour_year int) 
returns table (t_name varchar,t_type varchar,is_open boolean, country varchar)  
language plpgsql  
as 
$$  
begin 
    return query select tournament.tour_name,tournament.tour_type,tournament.is_open,tournament.country
	from tournament inner join tournament_entry on tournament.tour_id = tournament_entry.tournament_id where tournament_entry.tournament_year = tour_year;
end;  
$$;  
select * from count_tournament_year(2023);
select * from tournament_entry
select * from tournament