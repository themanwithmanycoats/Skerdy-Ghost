// Step event of obj_your_object
if (y > room_height / 2) {
    // Move in an arc downward
    direction += 2; // Adjust the angle increment for a smoother curve
    speed += 0.1; // Adjust the speed increase for a faster curve
}
else {
    // Move in an arc upward
    direction -= 2; // Adjust the angle increment for a smoother curve
    speed -= 0.1; // Adjust the speed decrease for a slower curve
}

// Calculate the new position
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

// Check if the object is out of the screen
if (y > room_height || x < -32 || x > room_width + 32) {
    // Reset the object's position
    speed = 3;
    direction = random(360);
    x = choose(32, room_width - 32);
    y = room_height;
}

if skelespawn_obj.skeletime = true {
	instance_destroy();
}