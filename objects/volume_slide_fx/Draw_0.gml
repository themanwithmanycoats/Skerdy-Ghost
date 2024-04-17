// Draw Event for Volume Slider Object

// Draw the background of the slider
draw_sprite(sprite_index, 0, x, y);

// Calculate the position of the slider handle within the specified range
var handleX = x + (sprite_width - 1) * global.volume_fx;

// Draw the slider handle at the correct position
draw_sprite(small_checkbox_off1, 1, handleX, y);
