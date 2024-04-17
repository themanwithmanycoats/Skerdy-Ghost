if change_layer_up.visible_layer = "records_layer_3" &&(global.collectibles[? "what comes after the dark"]) {
audio_stop_sound(global.currently_playing_song);
global.currently_playing_song = What_comes_after_the_dark;
audio_play_sound(global.currently_playing_song , 100, true, .5);


if obj_music_set1.is_selected = true && global.song_2 != What_comes_after_the_dark && global.song_3 != What_comes_after_the_dark {
	obj_music_set1.Song_name = "what comes after the dark"
	global.song_1 = What_comes_after_the_dark;
}else
	{ obj_music_set1.Song_name = "songs cannot be the same" }

if obj_music_set2.is_selected = true && global.song_1 != What_comes_after_the_dark && global.song_3 != What_comes_after_the_dark {
	obj_music_set2.Song_name = "what comes after the dark"
	global.song_2 = What_comes_after_the_dark;
}else
	{ obj_music_set2.Song_name = "songs cannot be the same" }

if obj_music_set3.is_selected = true && global.song_2 != What_comes_after_the_dark && global.song_1 != What_comes_after_the_dark {
	obj_music_set3.Song_name = "what comes after the dark"
	global.song_3 = What_comes_after_the_dark;
	global.song_4 = What_comes_after_the_dark;
}else
	{ obj_music_set3.Song_name = "songs cannot be the same" }


}