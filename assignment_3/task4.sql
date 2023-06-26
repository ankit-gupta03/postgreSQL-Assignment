-- Task 4

create or replace procedure manager_change(team_name varchar(20))
language plpgsql
as
$$
begin
	update team
	set manager = 11
	where team.teamname=team_name;
end;
$$
call manager_change('Slytherine');
select * from members;
select * from team