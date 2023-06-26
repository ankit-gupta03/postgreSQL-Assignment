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