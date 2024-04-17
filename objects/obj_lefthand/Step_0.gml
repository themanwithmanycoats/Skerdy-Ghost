var stalk = function() {
    var move_speed = 2; // Adjust the speed as needed
    var min_distance = 70;
    var retreat_distance = 10; // Distance to retreat from the player

    // Check if Player_ghost exists
    if (instance_exists(Player_ghost)) {
        // Calculate direction and distance to the player
        var dir = point_direction(x, y, Player_ghost.x, Player_ghost.y);
        var dist = point_distance(x, y, Player_ghost.x, Player_ghost.y);

        if (dist <= min_distance) {
            // If the object is within min_distance, move away by retreat_distance
            var move_x = lengthdir_x(-move_speed, dir); // Move away in the opposite direction
            var move_y = lengthdir_y(-move_speed, dir);

            x += move_x;
            y += move_y;
        } else if (dist > min_distance + retreat_distance) {
            // If the object is more than (min_distance + retreat_distance) pixels away, move towards the player.
            var move_x = lengthdir_x(move_speed, dir);
            var move_y = lengthdir_y(move_speed, dir);

            x += move_x;
            y += move_y;
        }
    } else {
        // Player_ghost doesn't exist, so destroy this object
        instance_destroy();
    }
};

var attack = function() {
    if (!in_attack_mode) {
        in_attack_mode = true;
    }

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


if (!in_attack_mode) {
    // Check the timer
    if (timer < 5 * room_speed) { // 5 seconds * room_speed
        timer++; // Increment the timer
	
    } else { timer = 0}
    
if timer = 5 && instance_exists(Player_ghost) {
	
	in_attack_mode = choose(true, false,);
}
    if (!in_attack_mode) {
        stalk(); // Continue stalking
    }
} else {
    // In attack mode, continue attacking
    attack();

    // If Player_ghost doesn't exist in attack mode, destroy this object
    if (!instance_exists(Player_ghost)) {
        instance_destroy();
    }
}

if skelespawn_obj.skeletime = true {
	instance_destroy();
}
