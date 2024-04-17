spawn_timer--

if (spawn_timer <= 0) && global.spawn_permission_pumpkin = true && skelespawn_obj.skeletime = false {
    instance_create_layer(random(room_width), room_height, "instances", obj_pumpkin);
    spawn_timer = irandom_range(1200,1800); // Reset the timer
    spawn_count += 1; // Increase the spawn counter
}
if global.Game_Over = true {
	instance_destroy();
}