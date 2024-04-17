


// Check if the mouse is over the slider
if (mouse_x >= x && mouse_x <= x + sprite_width && mouse_y >= y && mouse_y <= y + sprite_height) {
    // If the left mouse button is pressed, start dragging
    if (mouse_check_button_pressed(mb_left)) {
        isDragging = true;
    }
}

// If the left mouse button is released, stop dragging
if (mouse_check_button_released(mb_left)) {
    isDragging = false;
	audio_stop_sound(untitled);
	played = false
}

// If dragging, update the volume based on the mouse position
if (isDragging) {
	if played = false {
		audio_play_sound(untitled,10,true)
		played = true
	}
    // Calculate the volume based on the mouse position within the slider range
    global.volume_fx = clamp((mouse_x - x) / (sprite_width - 1), 0, 1);
}
