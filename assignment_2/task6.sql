-- Task 6

-- open_tournament

select * from tournament
select * from tournament_entry
select * from members
select * from team

create or replace view open_tournament as
select tour_name,country,tour_type,tournament_year,COUNT(tour_id) as no_of_participant from tournament inner join tournament_entry on tournament.tour_id = tournament_entry.tournament_id 
where is_open = true and tournament_year = 2022
group by tour_name,country,tour_type,tournament_year


select * from open_tournament










