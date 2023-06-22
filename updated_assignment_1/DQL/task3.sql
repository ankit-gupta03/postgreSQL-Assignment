-- Task 3

select * from members;
select l.firstname , r.firstname as coach_name,o.member_type from members as l left join members as r on l.coach_id = r.member_id
inner join member_type as o on l.member_type_id = o.member_typeid
order by l.firstname desc