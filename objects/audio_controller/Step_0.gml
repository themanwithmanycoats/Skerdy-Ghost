timer --;

// Check if the current score is greater than the previous score
if (global.player_score > previous_score && timer <= 0) {
    // Play the sound
    audio_play_sound(Points_oog, 10, false,0.5,0,random_range(0.3,0.6));
    
    // Update previous_score to the current score
    previous_score = global.player_score;
}
if timer <= 0 {
	timer = 5
}
if (!instance_exists(obj_righthand)) && (!instance_exists(obj_righthand_skele)){
	audio_stop_sound(circle);
}

if (!instance_exists(obj_lefthand)) && (!instance_exists(obj_lefthand_skele)){
	audio_stop_sound(Chase);
}
if (!instance_exists(Player_ghost)) {
	audio_stop_sound(cliff);
}