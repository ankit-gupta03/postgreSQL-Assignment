-- Task 7

select team.teamname , count(*) from members join team on members.team_id = team.team_id
group by team.teamname
having count(members.team_id)>5