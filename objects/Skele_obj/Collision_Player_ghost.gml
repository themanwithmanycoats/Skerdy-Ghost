if do_not_die = false && (!instance_exists(to_not_die))  {
	Player_ghost.is_dead = true;
	global.Game_Over = true;
} 
if do_not_die = true && instance_exists(to_not_die) {
} else {
	Player_ghost.is_dead = true;
	global.Game_Over = true;
}