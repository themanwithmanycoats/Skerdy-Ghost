var spawned_instance = noone; // Declare and initialize as noone

if (spawn_countdown <= 0) && stupid = false && skelespawn_obj.skeletime = false  {
    // Reset the countdown
    spawn_countdown = irandom_range(base_spawn_interval - 30, base_spawn_interval + 50);

    // Choose a random object name from the array
    var chosen_object_name = object_names[irandom(array_length_1d(object_names) - 1)];

    // Get the corresponding object index using a map or other method
    var chosen_object = noone; // Initialize to noone

    // Search for the chosen object index, you might use a map or a switch statement here
    switch (chosen_object_name) {
        case "Pillar_left_3":
            chosen_object = Pillar_left_3;
            break;
        case "Pillar_left_2":
            chosen_object = Pillar_left_2;
            break;
        case "Pillar_left_1":
            chosen_object = Pillar_left_1;
            break;
        case "Pillar_Right_1":
            chosen_object = Pillar_Right_1;
            break;
        case "Pillar_Right_2":
            chosen_object = Pillar_Right_2;
            break;
        case "Pillar_Right_3":
            chosen_object = Pillar_Right_3;
            break;
    }

    if (chosen_object != noone) {
        // Randomly choose between left (0) and right (1)
        var spawn_left = irandom(1);

        // Calculate the spawn position
        var spawn_x;
        if (spawn_left == 0) {
            // Spawn on the left side
            spawn_x = 0;
        } else {
            // Spawn on the right side
            spawn_x = 130; // Use the room width
        }
        var spawn_y = 320; // Use the room height

        // Create the chosen object at the spawn position
        spawned_instance = instance_create_layer(spawn_x, spawn_y, "Ready_inst", chosen_object);
		audio_play_sound(cliff,10,false,.5,0,random_range(.8,1.0));

        // Set the object's vertical speed to move it up
        spawned_instance.vspeed = -7; // Adjust the speed as needed
    }
}
else {
    spawn_countdown--;
}

// In the Step Event or another suitable event
if (frame_count % 300 == 0) { // Change interval every 300 frames (adjust as needed)
    base_spawn_interval = irandom_range(100, 200); // Change the base spawn interval
}

// Increment frame_count
frame_count++;
