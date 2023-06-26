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