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