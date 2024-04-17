is_spawn_timer--

if attackDelay > 0 && is_attacking = false{
attackDelay -= 1;
targetX = 95;
targetY = 175;
x = lerp(x, targetX, trackingSpeed);
y = lerp(y, targetY, trackingSpeed);
spawn_timer--;
}

if spawn_timer <= 0 && (instance_exists(Player_ghost))&& time_to_die = false{
	alarm[0] = 1
}


if check_position = true && clap_throw = true{
	if (point_distance(x, y, target_x, target_y) < speed) {
    // Object is close enough to the target, stop moving
    x = target_x;
    y = target_y;
	check_position = false
	moving_to_target = false
	speed = 0
} else {
    // Move towards the target coordinates
    move_towards_point(target_x, target_y, 2);
	moving_to_target = true
}
}
	

if (attackDelay <= 0) && is_attacking = false && time_to_die = false{
    is_attacking = true;
    var randomChoice = irandom_range(1, 4);

    // Set one of the variables to true based on the random number
    switch (randomChoice) {
        case 1:
            hunt = true;
            break;
        case 2:
            clap_throw = true;
            break;
        case 3:
            boulder_roof = true;
            break;
        case 4:
            scythe_call = true;
            break;
        // Add more cases if you have additional variables
    }
	
}

if boulder_roof = true && (instance_exists(Player_ghost)) {
	 if (point_distance(x, y, 95, 10) < speed) {
		 audio_play_sound(Poof34,10,false,1,0,.4)
		 speed = 0
		 skele_timer_boulder = 360
		 is_attacking = false
		 attackDelay = 600
		 boulder_roof = false
		 time_to_die1 = true
		 
} else { move_towards_point( 95 , 10 , 3) }
}	
	

if clap_throw = true && moving_to_target = false{
	is_attacking = true;
	time_to_die2 = true;
	var side_of = irandom_range(1,2);
	
		if side_of = 1 && attack_roll = false {
			target_x = -100
			target_y = 160
			attack_roll = true;
			check_position = true
		}
		if side_of = 2 && attack_roll = false {
			target_x = 220
			target_y = 160
			attack_roll = true
			check_position = true
		}
		if attack_roll = true && check_position = false {
			var type_attack = irandom_range(1,2);
				if type_attack = 1 {
					if x < 150 {
						instance_create_layer(0,160,"instances",death_clap_left_obj);
						attack_roll = false;
						target_x = 0;
						target_y = 0;
						is_attacking = false;
						clap_throw = false;
						attackDelay = 360;
					}
					if x > 150 {
						instance_create_layer(190,160,"instances",death_clap_right_obj);
						attack_roll = false;
						target_x = 0;
						target_y = 0;
						is_attacking = false;
						clap_throw = false;
						attackDelay = 360;
					}
				}
				if type_attack = 2 {
					if x < 150 {
						audio_play_sound(Poof34,10,false,1,0,.4)
						instance_create_layer(0,160,"instances",throw_rock_left_obj);
						attack_roll = false;
						target_x = 0;
						target_y = 0;
						is_attacking = false;
						clap_throw = false;
						attackDelay = 360;
					}
					if x > 150 {
						audio_play_sound(Poof34,10,false,1,0,.4)
						instance_create_layer(190,160,"instances",throw_rock_right_obj);
						attack_roll = false;
						target_x = 0;
						target_y = 0;
						is_attacking = false;
						clap_throw = false;
						attackDelay = 360;
					}
				}
		}
}

if hunt = true && (instance_exists(Player_ghost)){
	 time_to_die3 = true;
	 trackingSpeed = 0.02; // Adjust this value to control the delay
    // Get the target position (Player_ghost's position)
     targetX = Player_ghost.x;
     targetY = Player_ghost.y;

    // Use linear interpolation to move towards the target position with a delay
    x = lerp(x, targetX, trackingSpeed);
    y = lerp(y, targetY, trackingSpeed);

    // Decrement the tracking duration
    trackingDuration -= 1;

    // Check if the tracking duration is over
    if (trackingDuration <= 0) {
        // Reset the timer for the next update
        attackDelay = 180; // 3 seconds (60 steps per second)
        // Reset the tracking duration
        trackingDuration = 120; // 2 seconds (60 steps per second)
		
		is_attacking = false
		hunt = false
    }
}
	
if scythe_call = true {
	 if (point_distance(x, y, 95, 350) < speed) {
		 speed = 0
		 skele_timer_scythe = 360
		 is_attacking = false
		 attackDelay = 360
		 scythe_call = false
		 time_to_die4 = true
		 
} else { move_towards_point( 95 , 350 , 3) }
}	

if time_to_die1 && time_to_die2 && time_to_die3 && time_to_die4 = true && is_attacking = false && call = false {
	 if (point_distance(x, y, 95, 160) < speed) {
		 
		 speed = 0
	time_to_die = true;
	instance_create_layer(x, y, "instances",to_not_die);
	alarm[1] = 180;
	alarm[0] = 0
	sprite_index = Death_kill;
	instance_create_layer(95, 0 ,"instances", time_to_die_poof_spawner);
	
	call = true;
	
	} else { move_towards_point( 95 , 160 , 4);
}
	
	


}


if(!instance_exists(Player_ghost)){
	 // Set the center point of the circle
var centerX = 95; // Replace with your desired X coordinate
var centerY = 143; // Replace with your desired Y coordinate

// Set the radius and speed of the circle motion
var radius = 100; // Replace with your desired radius
speed = 0.02; // Adjust the speed as needed

// Calculate the new position
var angle = image_angle + speed; // Update the angle based on speed
var newX = centerX + lengthdir_x(radius, angle);
var newY = centerY + lengthdir_y(radius, angle);

// Set the new position
x = newX;
y = newY;

// Update the image angle for rotation (optional)
image_angle += 1; // Adjust the rotation speed as needed
}	
	


