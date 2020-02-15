Create View superbowl_player_view As
	SELECT 
		SB.id, 
		SB.superbowl, 
		SB.superbowl_date, 
		SB.winner, 
		SB.loser, 
		SB.score, 
		SB.mvp, 
		SB.city, 
		SB.state, 
		SB.stadium, 
		SB.lat, 
		SB.lng,
		PL.player_id, 
		PL.name, 
		PL."position", 
		PL.height, 
		PL.height_inch, 
		PL.weight, 
		PL.current_team, 
		PL.birth_date
	FROM public.superbowl SB
	Left Outer Join players as PL 
		On (SB.mvp = PL.name 
			And SB.superbowl_date > PL.birth_date
			And PL.player_id = (Select max(player_id) from players where name = PL.name))
	Order by SB.id
