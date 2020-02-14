CREATE TABLE players
(
    player_id integer NOT NULL PRIMARY KEY,
	name varchar(100),
	position varchar(50),
	height varchar(10),
	height_inch numeric(7,2),
	weight numeric(7,2),
	current_team varchar(100),
	birth_date date
)
