if change_layer_up.visible_layer = "records_layer_3" &&(global.collectibles[? "toxic lolllipop"]) {
audio_stop_sound(global.currently_playing_song);
global.currently_playing_song = Toxic_Lollipop;
audio_play_sound(global.currently_playing_song , 100, true, .5);



if obj_music_set1.is_selected = true && global.song_2 != Toxic_Lollipop && global.song_3 != Toxic_Lollipop {
	obj_music_set1.Song_name = "toxic lolllipop"
	global.song_1 = Toxic_Lollipop;
}else
	{ obj_music_set1.Song_name = "songs cannot be the same" }

if obj_music_set2.is_selected = true && global.song_1 != Toxic_Lollipop && global.song_3 != Toxic_Lollipop {
	obj_music_set2.Song_name = "toxic lolllipop"
	global.song_2 = Toxic_Lollipop;
}else
	{ obj_music_set2.Song_name = "songs cannot be the same" }

if obj_music_set3.is_selected = true && global.song_2 != Toxic_Lollipop && global.song_1 != Toxic_Lollipop {
	obj_music_set3.Song_name = "toxic lolllipop"
	global.song_3 = Toxic_Lollipop;
	global.song_4 = Toxic_Lollipop;
}else
	{ obj_music_set3.Song_name = "songs cannot be the same" }

}