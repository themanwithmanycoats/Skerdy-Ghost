if global.Game_Over = true {
	speed=0
}
if global.death_timer = 0 {
	instance_destroy();
}


if x <= 110 && global.Game_Over = false {
	hspeed = .5
	vspeed = -3
}

if x >= 110 && global.Game_Over = false {
	hspeed = -.5
	vspeed = -3
}

if y <= -20 && global.Game_Over = false {
	instance_destroy();
}

if skelespawn_obj.skeletime = true {
	instance_destroy();
}