obj_music_set1.Song_name = "Choose A Song"
obj_music_set2.Song_name = "Choose A Song"
obj_music_set3.Song_name = "Choose A Song"
global.song_1 = Onward_And_downward_1st_loop_
global.song_2 = Onward_And_downward_2nd_loop
global.song_3 = Onward_And_downward_3rd_loop
global.song_4 = Onward_And_downward
audio_stop_sound(global.currently_playing_song)
global.currently_playing_song = ghostly_lement_radio;
audio_play_sound(global.currently_playing_song, 1000, true)