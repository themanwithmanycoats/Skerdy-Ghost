skelespawn_obj.skeletime = true
audio_play_sound(untitled,9,false,0.5);

// Create Event
attackDelay = 360; // 3 seconds (60 steps per second)
trackingDuration = 120; // 2 seconds (60 steps per second)
trackingSpeed = 0.02; // Adjust this value to control the delay

// State variable
trackingState = true; // Initially set to true to start with tracking

// Target position variables
targetX = Player_ghost.x;
targetY = Player_ghost.y;
is_attacking = false
hunt = false
clap_throw = false
boulder_roof = false
scythe_call = false
check_position = false
target_x = 0
target_y = 0
moving_to_target = false
attack_roll = false
spawn_timer = 1
chosenObject = obj_righthand_skele
numberofspawns = 5
goodybag = false
goodybagSpawnCounter = 30;
alarm[0] = 0
skele_timer_boulder = 0
skele_timer_scythe = 0
time_to_die1 = false
time_to_die2 = false
time_to_die3 = false
time_to_die4 = false
time_to_die = false
alarm[1] = 0; // Set the alarm to go off in 3 seconds
draw_death = true;
call = false;
is_dead = true
do_not_die = false
is_spawn_timer = 180