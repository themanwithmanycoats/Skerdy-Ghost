if change_layer_up.visible_layer = "records_layer_1"  &&(global.collectibles[? "fated"]) {
audio_stop_sound(global.currently_playing_song);
global.currently_playing_song = Fated;
audio_play_sound(global.currently_playing_song , 100, true, .5);


if obj_music_set1.is_selected = true && global.song_2 != Fated && global.song_3 != Fated {
	obj_music_set1.Song_name = "fated"
	global.song_1 = Fated;
}else
	{ obj_music_set1.Song_name = "songs cannot be the same" }

if obj_music_set2.is_selected = true && global.song_1 != Fated && global.song_3 != Fated {
	obj_music_set2.Song_name = "fated"
	global.song_2 = Fated;
}else
	{ obj_music_set2.Song_name = "songs cannot be the same" }

if obj_music_set3.is_selected = true && global.song_2 != Fated && global.song_1 != Fated {
	obj_music_set3.Song_name = "fated"
	global.song_3 = Fated;
	global.song_4 = Fated;
}else
	{ obj_music_set3.Song_name = "songs cannot be the same" }

}