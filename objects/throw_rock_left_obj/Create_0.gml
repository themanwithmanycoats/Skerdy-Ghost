// Set initial rotation angle
angle = 0; // Adjust the angle as needed

// Set the speed of movement
speed = -1; // Adjust the speed as needed

// Set the direction to move to the left
direction = 180; 

// Move the object to the left
x += lengthdir_x(speed, direction);

// Rotate the object counterclockwise
image_angle = angle;

audio_play_sound(cliff,10,true,1,0,.5)

