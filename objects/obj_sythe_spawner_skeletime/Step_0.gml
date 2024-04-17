
if skelespawn_obj.skeletime = true {

timer += 1;
Skele_obj.skele_timer_scythe--;
if (timer >= spawn_interval) && Skele_obj.skele_timer_scythe > 0  {
    
    var random_x = irandom_range(32, room_width - 32); // Adjust the range as needed
    var boulder;

    if (irandom(2) == 0)
    {
        boulder = instance_create_layer(random_x, 318,"instances", obj_scythe_skele);
    }
    else
    {
        boulder = instance_create_layer(random_x, 318,"instances", obj_scythe_skele);
    }
    // Reset timer and set a new spawn interval
    timer = 0;
    spawn_interval = irandom_range(50, 90);
}
}






