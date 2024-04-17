if change_layer_up.visible_layer = "records_layer_2" &&(global.collectibles[? "sore eyes"]){
audio_stop_sound(global.currently_playing_song);
global.currently_playing_song = sore_eyes;
audio_play_sound(global.currently_playing_song , 100, true, .5);



if obj_music_set1.is_selected = true && global.song_2 != sore_eyes && global.song_3 != sore_eyes {
	obj_music_set1.Song_name = "sore eyes"
	global.song_1 = sore_eyes;
}else
	{ obj_music_set1.Song_name = "songs cannot be the same" }

if obj_music_set2.is_selected = true && global.song_1 != sore_eyes && global.song_3 != sore_eyes {
	obj_music_set2.Song_name = "sore eyes"
	global.song_2 = sore_eyes;
}else
	{ obj_music_set2.Song_name = "songs cannot be the same" }

if obj_music_set3.is_selected = true && global.song_2 != sore_eyes && global.song_1 != sore_eyes {
	obj_music_set3.Song_name = "sore eyes"
	global.song_3 = sore_eyes;
	global.song_4 = sore_eyes;
}else
	{ obj_music_set3.Song_name = "songs cannot be the same" }

}