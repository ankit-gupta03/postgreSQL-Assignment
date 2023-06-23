select * from members
select * from tournament
select * from team
select * from member_type

-- Task 1
-- member_view
create or replace view member_view as
select l.member_id,l.firstname,l.lastname,r.firstname as coach_name,l.join_date,l.gender,member_type.member_type , team.teamname from members l left join members r on l.coach_id = r.member_id
inner join team on l.team_id = team.team_id inner join member_type on l.member_type_id = member_type.member_typeid 

select * from member_view


-- Task 2 
-- First Member Details View
create or replace view member_details as
select members.firstname , members.lastname,COUNT(tournament_entry.tournament_year) as tour_no,tournament_entry.tournament_year from members inner join tournament_entry on members.member_id = tournament_entry.member_id
group by members.firstname,members.lastname,tournament_entry.tournament_year


-- Year Wise Records View
create or replace view year_wise_member as
SELECT *
FROM member_details
WHERE member_details.tournament_year = 2023;

select * from year_wise_member

-- Task 3 member_who_never_participated

select * from tournament
select * from tournament_entry
select * from members
select * from member_type

CREATE or REPLACE view no_member_participated as
SELECT l.firstname,l.lastname,member_type.member_type,r.firstname as coach_name
from members l join members r on l.coach_id = r.member_id
LEFT JOIN tournament_entry
ON l.member_id = tournament_entry.member_id
inner join member_type on l.member_type_id= member_type.member_typeid
WHERE tournament_entry.member_id is null

select * from no_member_participated

-- Task 4 display_tournament

select * from tournament
select * from tournament_entry
select * from members
create or replace view display_tournament as
select tour_id , tour_name , country, tournament_year,COUNT(tour_id) as no_of_participant from tournament inner join tournament_entry on tournament.tour_id = 
tournament_entry.tournament_id inner join members on tournament_entry.member_id = members.member_id
group by tour_id,tour_name,country,tournament_year


select * from display_tournament


-- Task 5  display_team
select * from tournament
select * from tournament_entry
select * from member_type
select * from team
select * from members

CREATE OR REPLACE VIEW display_team AS
select member_type.member_type ,members.team_id , teamname,COUNT(members.team_id) as team_member_count from team inner join members on
team.team_id = members.team_id inner join member_type on members.member_type_id = member_type.member_typeid
group by members.team_id,teamname,member_type.member_type


SELECT * from display_team

select * from team
select * from members
select * from member_type

CREATE OR REPLACE VIEW display_fee as 
select SUM(member_type.member_fee),COUNT(team.team_id) from members inner join member_type on members.member_type_id  = member_type.member_typeid
inner join team on members.team_id = team.team_id
group by member_type.member_type,team.team_id

select * from display_fee


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










