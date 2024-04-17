if global.Game_Over = true {
	speed=0
}
if global.death_timer = 0 {
	instance_destroy();
}

if y <= -20 && global.Game_Over = false {
	instance_destroy();
}
if instance_exists(Skele_obj){
	if Skele_obj.time_to_die = true {
		instance_destroy();
	}
}
