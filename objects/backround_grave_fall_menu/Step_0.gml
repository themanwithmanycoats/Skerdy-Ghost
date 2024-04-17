if triggered = true && is_playing = false {
	backround_grave_fall_menu.sprite_index = Record_grave_animation;
	is_playing = true
}
// Step Event
if (is_playing) && triggered = true {
    image_speed = animation_speed;
	
    if (image_index >= image_number - 1) {
        // Death animation has played once, perform further actions if needed
       backround_grave_fall_menu.sprite_index = record_grave;
	   is_playing = false
	   triggered = false;
	   layer_set_visible(change_layer_up.visible_layer,true);
    }
}