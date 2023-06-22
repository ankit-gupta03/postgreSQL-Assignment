--  Task 6

SELECT member_type.member_type ,COUNT(*) from members
join member_type on members.member_type_id  = member_type.member_typeid
group by member_type.member_type