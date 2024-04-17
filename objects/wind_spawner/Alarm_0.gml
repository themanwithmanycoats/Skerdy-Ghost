// In the Alarm event:
if (!instance_exists(ghust)) {
    var num_instances = irandom_range(2, 3); // Randomly determine the number of instances to spawn
    for (var i = 0; i < num_instances; i++) {
        var spawn_x = random(room_width); // Randomly choose x-coordinate within room width
        var spawn_y = random(room_height); // Randomly choose y-coordinate within room height
        instance_create_layer(spawn_x, spawn_y,"instances", ghust); // Create the object at the chosen coordinates
    }
}
alarm[0] = irandom_range(240, 999); // Reset the alarm to trigger again in 4 seconds