if change_layer_up.visible_layer = "records_layer_2" &&(global.collectibles[? "pi chrome"]){
audio_stop_sound(global.currently_playing_song);
global.currently_playing_song = PI_chrome;
audio_play_sound(global.currently_playing_song , 100, true, .5);

if obj_music_set1.is_selected = true && global.song_2 != PI_chrome && global.song_3 != PI_chrome {
	obj_music_set1.Song_name = "pi chrome"
	global.song_1 = PI_chrome;
}else
	{ obj_music_set1.Song_name = "songs cannot be the same" }

if obj_music_set2.is_selected = true && global.song_1 != PI_chrome && global.song_3 != PI_chrome {
	obj_music_set2.Song_name = "pi chrome"
	global.song_2 = PI_chrome;
}else
	{ obj_music_set2.Song_name = "songs cannot be the same" }

if obj_music_set3.is_selected = true && global.song_2 != PI_chrome && global.song_1 != PI_chrome {
	obj_music_set3.Song_name = "pi chrome"
	global.song_3 = PI_chrome;
	global.song_4 = PI_chrome;
}else
	{ obj_music_set3.Song_name = "songs cannot be the same" }

}
