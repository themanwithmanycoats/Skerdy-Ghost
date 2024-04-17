timer++;
if timer >= 1152 && final = false && global.song_4 = Onward_And_downward {
	audio_stop_sound(global.song_4);
	audio_play_sound(global.song_4, 1000, true);
	timer = 0
}

if global.player_score > 300 && global.player_score < 1000  {
	audio_sound_gain(global.song_1, 0 , 3000);
	audio_sound_gain(global.song_2, 1 , 3000);
}

if global.player_score > 1000 && global.player_score < 1500  {
	audio_sound_gain(global.song_2, 0 , 3000);
	audio_sound_gain(global.song_3, 1 , 3000);
}

if global.player_score > 1500  {
	audio_sound_gain(global.song_3, 0 , 3000);
	audio_sound_gain(global.song_4, 1 , 3000);
	audio_sound_gain(global.song_1, 0 , 3000);
	final = true;
}
