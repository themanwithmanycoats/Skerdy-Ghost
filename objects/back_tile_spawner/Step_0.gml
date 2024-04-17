// Decrease the spawn timer
spawn_timer -= 1;

// Check if it's time to spawn a tile object
if (spawn_timer <= 0) {
    // Randomly choose an object from the tileObjects array
    var random_index = irandom(9); // Adjust the range based on the number of objects in the array
    var selected_object = tileObjects[random_index];

    // Create the selected object at the spawner's position
    var spawned_object = instance_create_layer(x, y, "Backing", selected_object);

    // Set a speed for the object to move upwards
     selected_object.vspeed = irandom_range(-1, -3); // Adjust the speed as needed

    // Reset the spawn timer for the next spawn
    spawn_timer = irandom_range(60, 360) ; // Adjust the range as needed
}

