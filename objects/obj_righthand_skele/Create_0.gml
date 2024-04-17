audio_play_sound(circle, 10, true,0.3);
instance_create_layer(x,y,"instances",Deathspawn_obj)
death_x = x
death_y = y
 
 
 move_speed = 3; // Adjust the speed as needed
 orbit_distance = 100; // The distance from the target object (e.g., Player_ghost)
 angle = 0; // Initial angle
 target_object = Player_ghost; // The object to circle around

 timer = 0; // Initialize the timer
 destroy_after = room_speed; // 1 second (room_speed is frames per second)
is_detroyed = false
