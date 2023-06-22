-- Task 2

UPDATE members as tempo
	SET phone = (
	  	SELECT phone from members as manager
	   	WHERE manager.member_id = (select team.manager from team inner join members on team.team_id = members.team_id where team.team_id = members.team_id LIMIT 1)
	  )
WHERE phone is NULL