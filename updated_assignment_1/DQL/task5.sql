-- Task 5

select firstname,lastname from members inner join tournament_entry
on members.member_id = tournament_entry.member_id
where tournament_entry.tournament_year = 2022