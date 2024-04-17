if change_layer_up.visible_layer = "records_layer_2" &&(global.collectibles[? "tin man tales"]){
audio_stop_sound(global.currently_playing_song);
global.currently_playing_song = Tin_man_tales;
audio_play_sound(global.currently_playing_song , 100, true, .5);


if obj_music_set1.is_selected = true && global.song_2 != Tin_man_tales && global.song_3 != Tin_man_tales {
	obj_music_set1.Song_name = "tin man tales"
	global.song_1 = Tin_man_tales;
}else
	{ obj_music_set1.Song_name = "songs cannot be the same" }

if obj_music_set2.is_selected = true && global.song_1 != Tin_man_tales && global.song_3 != Tin_man_tales {
	obj_music_set2.Song_name = "tin man tales"
	global.song_2 = Tin_man_tales;
}else
	{ obj_music_set2.Song_name = "songs cannot be the same" }

if obj_music_set3.is_selected = true && global.song_2 != Tin_man_tales && global.song_1 != Tin_man_tales {
	obj_music_set3.Song_name = "tin man tales"
	global.song_3 = Tin_man_tales;
	global.song_4 = Tin_man_tales;
}else
	{ obj_music_set3.Song_name = "songs cannot be the same" }

}