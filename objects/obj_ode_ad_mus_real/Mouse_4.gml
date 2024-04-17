if change_layer_up.visible_layer = "records_layer_2" &&(global.collectibles[? "ode ad mus real"]){
audio_stop_sound(global.currently_playing_song);
global.currently_playing_song = Ode_Ad_Mus_Real;
audio_play_sound(global.currently_playing_song , 100, true, .5);


if obj_music_set1.is_selected = true && global.song_2 != Ode_Ad_Mus_Real && global.song_3 != Ode_Ad_Mus_Real {
	obj_music_set1.Song_name = "ode ad mus real"
	global.song_1 = Ode_Ad_Mus_Real;
}else
	{ obj_music_set1.Song_name = "songs cannot be the same" }

if obj_music_set2.is_selected = true && global.song_1 != Ode_Ad_Mus_Real && global.song_3 != Ode_Ad_Mus_Real {
	obj_music_set2.Song_name = "ode ad mus real"
	global.song_2 = Ode_Ad_Mus_Real;
}else
	{ obj_music_set2.Song_name = "songs cannot be the same" }

if obj_music_set3.is_selected = true && global.song_2 != Ode_Ad_Mus_Real && global.song_1 != Ode_Ad_Mus_Real {
	obj_music_set3.Song_name = "ode ad mus real"
	global.song_3 = Ode_Ad_Mus_Real;
	global.song_4 = Ode_Ad_Mus_Real;
}else
	{ obj_music_set3.Song_name = "songs cannot be the same" }


}