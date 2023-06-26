-- Task 1

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