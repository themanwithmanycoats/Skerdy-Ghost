object_get_mask(Player_ghost);


if mask_index = Hero_Ghost_Solid{
	global.Game_Over = true	
	is_dead = true
	
}

if mask_index = Hero_Ghost_Faint{
	global.player_score += 3;	
}