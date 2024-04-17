audio_stop_sound(ghostly_lement_death)
audio_play_sound(global.song_1, 1000, true);
audio_play_sound(global.song_2, 1000, true);
audio_play_sound(global.song_3, 1000, true);
audio_play_sound(global.song_4, 1000, true);
audio_sound_gain(global.song_1, 1 , 0);
audio_sound_gain(global.song_2, 0 , 0);
audio_sound_gain(global.song_3, 0 , 0);
audio_sound_gain(global.song_4, 0 , 0);
sec = 60
timer = 0
final = false
