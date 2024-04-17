if change_layer_up.visible_layer = "records_layer_1"  &&(global.collectibles[? "felt furnace"]) {
audio_stop_sound(global.currently_playing_song);
global.currently_playing_song = Felt_furnace;
audio_play_sound(global.currently_playing_song , 100, true, .5);


if obj_music_set1.is_selected = true && global.song_2 != Felt_furnace && global.song_3 != Felt_furnace {
	obj_music_set1.Song_name = "felt furnace"
	global.song_1 = Felt_furnace;
}else
	{ obj_music_set1.Song_name = "songs cannot be the same" }

if obj_music_set2.is_selected = true && global.song_1 != Felt_furnace && global.song_3 != Felt_furnace {
	obj_music_set2.Song_name = "felt furnace"
	global.song_2 = Felt_furnace;
}else
	{ obj_music_set2.Song_name = "songs cannot be the same" }

if obj_music_set3.is_selected = true && global.song_2 != Felt_furnace && global.song_1 != Felt_furnace {
	obj_music_set3.Song_name = "felt furnace"
	global.song_3 = Felt_furnace;
	global.song_4 = Felt_furnace;
}else
	{ obj_music_set3.Song_name = "songs cannot be the same" }

}

