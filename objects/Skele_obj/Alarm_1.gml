if do_not_die = true && (instance_exists(Player_ghost)) {
	global.player_score += 1000
	instance_destroy(to_not_die);
	instance_destroy(Skele_obj);
	instance_destroy(time_to_die_poof_spawner);
	if global.achievements[3][3] = false {
		global.achievements[3][3] = true
	}	
	alarm[1] = 0
	skelespawn_obj.skeletime = false
}else if (instance_exists(Player_ghost)){
	do_not_die = false 
	global.Game_Over = true
	Player_ghost.is_dead = true
	alarm[1] = 0
}