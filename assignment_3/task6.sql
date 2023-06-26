-- Task 6

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