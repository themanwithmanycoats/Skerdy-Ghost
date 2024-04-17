death_x = x
death_y = y

instance_create_layer(death_x,death_y,"Ready_inst",left)
audio_play_sound(Poof34,10,false,1,0,1.7)

if (instance_exists(Player_ghost)) {

	global.player_score += 100;
	
}










