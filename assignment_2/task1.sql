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
