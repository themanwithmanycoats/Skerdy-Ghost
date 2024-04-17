if  (!instance_exists(Player_ghost)){
	instance_destroy();
}

timer = 180

if  (instance_exists(Player_ghost)){
move_towards_point(Player_ghost.x , Player_ghost.y , 2)
}
audio_play_sound(rocks,10,false,1,0,1.5)