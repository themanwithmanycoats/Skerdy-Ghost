if skelespawn_obj.skeletime = true {
timer += 1;
Skele_obj.skele_timer_boulder--;
if (timer >= spawn_interval) && Skele_obj.skele_timer_boulder > 0  {
   
    var random_x = irandom_range(32, room_width - 32); // Adjust the range as needed
    var boulder;

    if (irandom(2) == 0)
    {
        boulder = instance_create_layer(random_x, 0,"instances", obj_boulder_small);
    }
    else
    {
        boulder = instance_create_layer(random_x, 0,"instances", obj_boulder_large);
    }

    // Set the boulder's initial speed
   { boulder.vspeed = irandom(move_speed);
	   if boulder.vspeed = 0 {
	   boulder.vspeed = 1
	   }
   }

    // Reset timer and set a new spawn interval
    timer = 0;
    spawn_interval = irandom_range(50, 90);
}
}







