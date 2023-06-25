--1

create or replace procedure enroll_into_tournament(member_name VARCHAR(20),tournament_name VARCHAR(30))
language plpgsql
as
$$
declare
    m_id INTEGER;
    t_id INTEGER;
begin
    	    select member_id into m_id from members where firstname=member_name;
    		select tour_id into t_id from tournament where tour_name = tournament_name;
		    insert into tournament_entry (member_id, tournament_id, tournament_year) values(m_id, t_id, 2024);
end;
$$
call enroll_into_tournament('Babu', 'National Level');
select * from tournament_entry
select * from tournament
select * from members

--2

create or replace function tournament(in tour_year int,out no_of_tournament int)  
language plpgsql  
as  
$$    
begin 
    select COUNT(*) into no_of_tournament from tournament_entry  where tour_year = tournament_year GROUP BY tournament_year; 
end;  
$$; 
select * from tournament(2022);
select * from tournament_entry;
select * from tournament

--3

create or replace function count_tournament_year(tour_year int) 
returns table (t_name varchar,t_type varchar,is_open boolean, country varchar)  
language plpgsql  
as 
$$  
begin 
    return query select tournament.tour_name,tournament.tour_type,
	tournament.is_open,tournament.country
	from tournament inner join tournament_entry on
	tournament.tour_id = tournament_entry.tournament_id where tournament_entry.tournament_year = tour_year;
end;  
$$;  
select * from count_tournament_year(2023);
select * from tournament_entry
select * from tournament

--4

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

--5

create or replace function team_details(team_name varchar) 
returns table(member_firstname varchar,member_lastname varchar,
	membershiptype varchar,joindate date,gender varchar)  
language plpgsql
as  
$$  
begin
    return query select members.firstname,members.lastname,member_type.member_type,
	members.join_date,members.gender from members inner join member_type on members.member_type_id = member_type.member_typeid
	inner join team on members.team_id = team.team_id
	where team.teamname = team_name;
end;  
$$;  

select * from team_details('Tagore');

select * from team;
select * from members;
select * from member_type;

--6

create or replace procedure coach_change(coach_name varchar(20), member_name varchar(20))
language plpgsql
as
$$
begin
    if not exists(select * from members where firstname = member_name)
	then
		raise 'Member pta nhi kidhr se aaya';
    else
        update members set firstname=coach_name where member_id
		=(select coach_id from members where firstname = member_name);
    end if;
end;
$$
update members set firstname = 'Antariksha' where member_id=13;
call coach_change('Babu','Rohit');
select * from members;


--7

create or replace function year_wise_participants(in tour_year int,out count_participants int)
language plpgsql
as
$$ 
begin
  select count(member_id) into count_participants from tournament_entry where tournament_entry.tournament_year=tour_year;
end;
$$;
select * from year_wise_participants(2023);
select * from tournament
select * from tournament_entry
