if change_layer_up.visible_layer = "records_layer_1" &&(global.collectibles[? "chill spook"]) {
audio_stop_sound(global.currently_playing_song);
global.currently_playing_song = Chill_Spook;
audio_play_sound(global.currently_playing_song , 100, true, .5);


if obj_music_set1.is_selected = true && global.song_2 != Chill_Spook && global.song_3 != Chill_Spook {
	obj_music_set1.Song_name = "chill spook"
	global.song_1 = Chill_Spook;
}else
	{ obj_music_set1.Song_name = "songs cannot be the same" }

if obj_music_set2.is_selected = true && global.song_1 != Chill_Spook && global.song_3 != Chill_Spook {
	obj_music_set2.Song_name = "chill spook"
	global.song_2 = Chill_Spook;
}else
	{ obj_music_set2.Song_name = "songs cannot be the same" }

if obj_music_set3.is_selected = true && global.song_2 != Chill_Spook && global.song_1 != Chill_Spook {
	obj_music_set3.Song_name = "chill spook"
	global.song_3 = Chill_Spook;
	global.song_4 = Chill_Spook;
}else
	{ obj_music_set3.Song_name = "songs cannot be the same" }

}
