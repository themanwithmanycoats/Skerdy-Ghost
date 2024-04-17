timer--;

if death_handled = false {
	global.death_timer--;
	}

if timer <= 0 && triggered = false {
audio_play_sound(ghostly_lement_death, 100, true, .1);
triggered = true
}

audio_sound_gain(ghostly_lement_death, 10 , 30000);

if global.death_timer = 0 {
	death_handled = true
}
