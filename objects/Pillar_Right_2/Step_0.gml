if global.Game_Over = true {
	speed=0
}
if global.death_timer = 0 {
	instance_destroy();
}


// Destroy event of spawned objects
if (y < -100) {
    instance_destroy(); 
}
