x = pillar_parent.x+10
y = pillar_parent.y+2

if global.Game_Over = true{
	instance_destroy();
}
if global.death_timer = 0 {
	instance_destroy();
}

if (y < -100) {
   instance_destroy();  
}