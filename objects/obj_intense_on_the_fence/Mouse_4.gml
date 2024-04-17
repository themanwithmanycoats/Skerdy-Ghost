if change_layer_up.visible_layer = "records_layer_2" &&(global.collectibles[? "intense on the fence"]){
audio_stop_sound(global.currently_playing_song);
global.currently_playing_song = Intense_on_the_fence;
audio_play_sound(global.currently_playing_song , 100, true, .5);


if obj_music_set1.is_selected = true && global.song_2 != Intense_on_the_fence && global.song_3 != Intense_on_the_fence {
	obj_music_set1.Song_name = "intense on the fence"
	global.song_1 = Intense_on_the_fence;
}else
	{ obj_music_set1.Song_name = "songs cannot be the same" }

if obj_music_set2.is_selected = true && global.song_1 != Intense_on_the_fence && global.song_3 != Intense_on_the_fence {
	obj_music_set2.Song_name = "intense on the fence"
	global.song_2 = Intense_on_the_fence;
}else
	{ obj_music_set2.Song_name = "songs cannot be the same" }

if obj_music_set3.is_selected = true && global.song_2 != Intense_on_the_fence && global.song_1 != Intense_on_the_fence {
	obj_music_set3.Song_name = "intense on the fence"
	global.song_3 = Intense_on_the_fence;
	global.song_4 = Intense_on_the_fence;
}else
	{ obj_music_set3.Song_name = "songs cannot be the same" }

}