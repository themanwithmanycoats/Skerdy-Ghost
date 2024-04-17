// Get the mouse cursor position
var mouseX = mouse_x;
var mouseY = mouse_y;

// Set the player's position to the mouse cursor's position
if is_dead = false {
x = mouseX;
y = mouseY;
}
// Check if the left mouse button is held down

// get distance from fake mouse to real mouse
var moving = point_distance(mx, my, mouse_x, mouse_y);

// update positions of fake mouse
mx = mouse_x;
my = mouse_y;

if (moving) && global.Game_Over = false {
    sprite_index = Hero_Ghost_Faint; // Replace "spr_NewSprite" with the new sprite you want
    reset_timer = 5;

    // Change the collision mask to match the new sprite
    mask_index = Hero_Ghost_Faint;
} else if (!moving && reset_timer == 0)  && global.Game_Over = false {
    // Change the sprite and mask back to the original when the button is released
    sprite_index = Hero_Ghost_Solid; // Replace "spr_OriginalSprite" with the original sprite
    mask_index = Hero_Ghost_Solid; // Ensure that the mask matches the original sprite
} else if (moving && reset_timer > 0)  && global.Game_Over = false {
    reset_timer--;
} else  {
    reset_timer--;
}

if is_dead = true && change_dead = false {
	sprite_index = Hero_Ghost_death_v2_export
	change_dead = true
}
// Step Event
if (is_dead) && change_dead = true {
    image_speed = death_animation_speed;
	

    if (image_index >= image_number - 1) {
        // Death animation has played once, perform further actions if needed
        instance_destroy(); // Destroy the player object or perform other actions
    }
}
if global.multiplyer_is_active = true {
	pumpkin_timer--
}
if pumpkin_timer <= 0 {
	global.multiplyer_is_active = false
	pumpkin_timer = 600
}
if global.multiplyer_is_active = false {
	layer_set_visible("pumpkin_time", false);
}

if global.player_score >= 10000 && global.achievements[4][3] = false {
	global.achievements[4][3] = true
}

if global.player_score >= 50000 && global.achievements[5][3] = false {
	global.achievements[5][3] = true
}