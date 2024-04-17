if (global.Game_Over && !gameOverHandledPart1)  { 
    
	window_set_cursor(cr_cross);
    instance_destroy(back_tile_spawner);
    instance_destroy(hand_spawner_left);
    instance_destroy(hand_spawner_right);
    instance_destroy(obj_boulder_spawner_skeletime);
    instance_destroy(objSpawner);
	instance_destroy(Sythe_spawner);
	instance_destroy(music_player);
	audio_play_sound(ghost_death_oog,10,false);
	check_for_save_data();
	instance_create_layer(0,0,"Game_Over_screen",death_misc);
	layer_vspeed("Background",0);
    gameOverHandledPart1 = true;
}
if gameOverHandledPart2 = false && global.death_timer <= 0 {
	layer_set_visible("Game_Over_screen", true);
	instance_destroy(Player_ghost);
    instance_create_layer(90, 150, "Game_Over_screen", obj_button_restart);
    instance_create_layer(90, 250, "Game_Over_screen", obj_button_quit);
	instance_create_layer(90, 200, "Game_Over_screen", obj_button_reset);
	
	if global.achievements[0][3] = false {
	global.achievements[0][3] = true
	}
	
	check_for_save_achievements();
	load_achievements();
	gameOverHandledPart2 = true
}