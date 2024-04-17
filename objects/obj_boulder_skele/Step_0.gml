timer--

if global.Game_Over = true {
	speed=0
}
if global.death_timer = 0 {
	instance_destroy();
}


if timer <= 0 {
    instance_destroy(); 
}

if Skele_obj.call = true {
	instance_destroy();
}