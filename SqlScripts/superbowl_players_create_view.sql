Create View superbowl_player_view As
SELECT SB.*, PL.* from superbowl as SB
Left Outer Join players as PL
On (SB.mvp = PL.name)
