if change_layer_up.visible_layer = "records_layer_1"  &&(global.collectibles[? "fresh off the beat"]){
audio_stop_sound(global.currently_playing_song);
global.currently_playing_song = Fresh_off_the_beat;
audio_play_sound(global.currently_playing_song , 100, true, .5);


if obj_music_set1.is_selected = true && global.song_2 != Fresh_off_the_beat && global.song_3 != Fresh_off_the_beat {
	obj_music_set1.Song_name = "fresh off the beat"
	global.song_1 = Fresh_off_the_beat;
}else
	{ obj_music_set1.Song_name = "songs cannot be the same" }

if obj_music_set2.is_selected = true && global.song_1 != Fresh_off_the_beat && global.song_3 != Fresh_off_the_beat {
	obj_music_set2.Song_name = "fresh off the beat"
	global.song_2 = Fresh_off_the_beat;
}else
	{ obj_music_set2.Song_name = "songs cannot be the same" }

if obj_music_set3.is_selected = true && global.song_2 != Fresh_off_the_beat && global.song_1 != Fresh_off_the_beat {
	obj_music_set3.Song_name = "fresh off the beat"
	global.song_3 = Fresh_off_the_beat;
	global.song_4 = Fresh_off_the_beat;
}else
	{ obj_music_set3.Song_name = "songs cannot be the same" }

}