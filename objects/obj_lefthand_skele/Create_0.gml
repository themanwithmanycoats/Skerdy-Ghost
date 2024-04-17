audio_play_sound(Chase,10,true,0.5);
instance_create_layer(x,y,"instances",Deathspawn_obj)
// Create Event for "obj_left hand" object
timer = 0; // Initialize the timer
in_attack_mode = false; // Initialize the attack mode flag
dir_to_player = 0; // Initialize the dir_to_player variable
player_x = 0; // Initialize the player's X position
player_y = 0; // Initialize the player's Y position

death_x = x
death_y = y

attack = function() {
    var move_speed = 2; // Adjust the speed as needed

    // Calculate direction towards the mouse position
    dir_to_mouse = point_direction(x, y, mouse_x, mouse_y);

    // Move towards the mouse position with constant speed
    x += lengthdir_x(move_speed, dir_to_mouse);
    y += lengthdir_y(move_speed, dir_to_mouse);

    // Check if the object has reached the mouse position
    if (point_distance(x, y, mouse_x, mouse_y) < move_speed) {
        instance_destroy(); // Destroy the object
    }
};




