
spawn_timer += 1;

if (spawn_timer >= spawn_interval) && global.spawn_permission_left_hand = true && skelespawn_obj.skeletime = false  {
    // It's time to spawn the object
    var should_spawn = irandom(100) < 30; // 50% chance to spawn (adjust as needed)

    if (should_spawn) {
        var spawnX = 0; // Set the X position to the leftmost point of the screen.
        var spawnY = random(room_height); // Random Y position within the room height.
       
        instance_create_layer(spawnX, spawnY, "instances", obj_lefthand);
		
    }

    // Reset the timer
    spawn_timer = 0;
}
