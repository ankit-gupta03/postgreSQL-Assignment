-- Task 4 display_tournament

select * from tournament
select * from tournament_entry
select * from members
create or replace view display_tournament as
select tour_id , tour_name , country, tournament_year,COUNT(tour_id) as no_of_participant from tournament inner join tournament_entry on tournament.tour_id = 
tournament_entry.tournament_id inner join members on tournament_entry.member_id = members.member_id
group by tour_id,tour_name,country,tournament_year


select * from display_tournament