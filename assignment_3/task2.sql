
-- Task 2

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