if global.Game_Over = true {
	speed=0
}
if global.death_timer = 0 {
	instance_destroy();
}

if (y > 320)
{
    instance_destroy(); // Destroy the instance if it goes beyond y = 320
}