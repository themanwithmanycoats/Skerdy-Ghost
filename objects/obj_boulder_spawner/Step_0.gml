if  (!instance_exists(Player_ghost)){
	instance_destroy();
}
timer += 1;

if (timer >= spawn_interval) && global.spawn_permission_boulders = true && skelespawn_obj.skeletime = false {
    // Spawn a boulder randomly
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
    spawn_interval = irandom_range(60, 120);
}

if global.player_score >= score_to_meet && move_speed < 8 {
	move_speed ++;
	score_to_meet += 1000;
}







