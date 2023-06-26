-- Task 5

create or replace function team_details(team_name varchar) 
returns table(member_firstname varchar,member_lastname varchar,membershiptype varchar,joindate date,gender varchar)  
language plpgsql
as  
$$  
begin
    return query select members.firstname,members.lastname,member_type.member_type,members.join_date,members.gender
	from members inner join member_type on members.member_type_id = member_type.member_typeid
	inner join team on members.team_id = team.team_id
	where team.teamname = team_name;
end;  
$$;  

select * from team_details('Tagore');

select * from team;
select * from members;
select * from member_type;