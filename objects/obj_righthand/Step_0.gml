if (instance_exists(target_object)) {
    // Calculate the current position of the object to circle around the target object
    x = target_object.x + lengthdir_x(orbit_distance, angle);
    y = target_object.y + lengthdir_y(orbit_distance, angle);
	

    // Increment the angle to make the object spin around the target object
    angle += 3; // Adjust the angle change rate as needed
} else {
    instance_destroy(); // Destroy the object if the target object no longer exists
}
if timer = 5 {
	orbit_distance--;
	timer = 0;
}
// Check if the timer has reached the destroy_after time
if (timer >= destroy_after) {
    // Calculate the distance to the mouse
    var distance_to_mouse = point_distance(x, y, mouse_x, mouse_y);

    // If the object is very close to the mouse position, destroy it
    if (distance_to_mouse < move_speed) {
        instance_destroy(); // Destroy the object
    }
} else {
    timer++; // Increment the timer
}

if skelespawn_obj.skeletime = true {
	instance_destroy();
}