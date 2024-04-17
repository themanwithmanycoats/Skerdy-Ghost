// Step Event code for your object
if (place_meeting(x, y, Player_ghost)) {
    // Collision with Player_Ghost detected
    Skele_obj.do_not_die = true;
} else {
    // No collision with Player_Ghost
    Skele_obj.do_not_die = false;
}
x = Skele_obj.x
y = Skele_obj.y
if (!Player_ghost) {
	instance_destroy();
}