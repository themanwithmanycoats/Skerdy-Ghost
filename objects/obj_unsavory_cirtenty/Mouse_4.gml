if change_layer_up.visible_layer = "records_layer_3" &&(global.collectibles[? "unsavory cirtenty"]) {
audio_stop_sound(global.currently_playing_song);
global.currently_playing_song = unsavory_cirtenty;
audio_play_sound(global.currently_playing_song , 100, true, .5);



if obj_music_set1.is_selected = true && global.song_2 != unsavory_cirtenty && global.song_3 != unsavory_cirtenty {
	obj_music_set1.Song_name = "unsavory certainty"
	global.song_1 = unsavory_cirtenty;
}else
	{ obj_music_set1.Song_name = "songs cannot be the same" }

if obj_music_set2.is_selected = true && global.song_1 != unsavory_cirtenty && global.song_3 != unsavory_cirtenty {
	obj_music_set2.Song_name = "unsavory certainty"
	global.song_2 = unsavory_cirtenty;
}else
	{ obj_music_set2.Song_name = "songs cannot be the same" }

if obj_music_set3.is_selected = true && global.song_2 != unsavory_cirtenty && global.song_1 != unsavory_cirtenty {
	obj_music_set3.Song_name = "unsavory certainty"
	global.song_3 = unsavory_cirtenty;
	global.song_4 = unsavory_cirtenty;
}else
	{ obj_music_set3.Song_name = "songs cannot be the same" }

}