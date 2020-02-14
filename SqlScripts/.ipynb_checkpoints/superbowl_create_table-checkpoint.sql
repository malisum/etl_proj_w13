CREATE TABLE superbowl
(
    id integer NOT NULL PRIMARY KEY,
	superbowl text,
	superbowl_date date,
	winner varchar(100),
	loser varchar(100),
	score varchar(10),
	mvp varchar(100),
	city varchar(50),
	state varchar(50),
	stadium varchar(100),
	lat numeric(11,8),
	lng numeric(11,8)
)