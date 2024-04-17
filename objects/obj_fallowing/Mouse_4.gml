if change_layer_up.visible_layer = "records_layer_1" &&(global.collectibles[? "fallowing"]) {
audio_stop_sound(global.currently_playing_song);
global.currently_playing_song = fallowing;
audio_play_sound(global.currently_playing_song , 100, true, .5);


if obj_music_set1.is_selected = true && global.song_2 != fallowing && global.song_3 != fallowing {
	obj_music_set1.Song_name = "fallowing"
	global.song_1 = fallowing;
}else
	{ obj_music_set1.Song_name = "songs cannot be the same" }

if obj_music_set2.is_selected = true && global.song_1 != fallowing && global.song_3 != fallowing {
	obj_music_set2.Song_name = "fallowing"
	global.song_2 = fallowing;
}else
	{ obj_music_set2.Song_name = "songs cannot be the same" }

if obj_music_set3.is_selected = true && global.song_2 != fallowing && global.song_1 != fallowing {
	obj_music_set3.Song_name = "fallowing"
	global.song_3 = fallowing;
	global.song_4 = fallowing;
}else
	{ obj_music_set3.Song_name = "songs cannot be the same" }

}