if change_layer_up.visible_layer = "records_layer_2"  &&(global.collectibles[? "harrowing halloween"]){
audio_stop_sound(global.currently_playing_song);
global.currently_playing_song = L_Harrowing_Halloween;
audio_play_sound(global.currently_playing_song , 100, true, .5);


if obj_music_set1.is_selected = true && global.song_2 != L_Harrowing_Halloween && global.song_3 != L_Harrowing_Halloween {
	obj_music_set1.Song_name = "harrowing halloween"
	global.song_1 = L_Harrowing_Halloween;
}else
	{ obj_music_set1.Song_name = "songs cannot be the same" }

if obj_music_set2.is_selected = true && global.song_1 != L_Harrowing_Halloween && global.song_3 != L_Harrowing_Halloween {
	obj_music_set2.Song_name = "harrowing halloween"
	global.song_2 = L_Harrowing_Halloween;
}else
	{ obj_music_set2.Song_name = "songs cannot be the same" }

if obj_music_set3.is_selected = true && global.song_2 != L_Harrowing_Halloween && global.song_1 != L_Harrowing_Halloween {
	obj_music_set3.Song_name = "harrowing halloween"
	global.song_3 = L_Harrowing_Halloween;
	global.song_4 = L_Harrowing_Halloween;
}else
	{ obj_music_set3.Song_name = "songs cannot be the same" }

}