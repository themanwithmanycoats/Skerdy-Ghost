if (global.collectibles[? "pickaxe"]) && change_layer_up.visible_layer = "records_layer_1" {
    audio_stop_sound(global.currently_playing_song);
    global.currently_playing_song = Pickaxe;
    audio_play_sound(global.currently_playing_song, 100, true, 0.5);


if obj_music_set1.is_selected = true && global.song_2 != Pickaxe && global.song_3 != Pickaxe {
	obj_music_set1.Song_name = "pickaxe"
	global.song_1 = Pickaxe;
}else
	{ obj_music_set1.Song_name = "songs cannot be the same" }

if obj_music_set2.is_selected = true && global.song_1 != Pickaxe && global.song_3 != Pickaxe {
	obj_music_set2.Song_name = "pickaxe"
	global.song_2 = Pickaxe;
}else
	{ obj_music_set2.Song_name = "songs cannot be the same" }

if obj_music_set3.is_selected = true && global.song_2 != Pickaxe && global.song_1 != Pickaxe {
	obj_music_set3.Song_name = "pickaxe"
	global.song_3 = Pickaxe;
	global.song_4 = Pickaxe;
}else
	{ obj_music_set3.Song_name = "songs cannot be the same" }

}