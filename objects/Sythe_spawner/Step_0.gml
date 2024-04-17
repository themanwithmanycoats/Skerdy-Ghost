timer++

// Adjust the bottom spawn positions to fit within the room


var spawn = function(){

var left_spawn_x = irandom_range(0, 96);  // Left corner
var right_spawn_x = irandom_range(96, 192);  // Right corner
var spawn_y = 320 - 16;  // Bottom of the screen

if irandom(1) == 0 {
    var spawnX = left_spawn_x;
	instance_create_layer(spawnX, spawn_y, "instances", obj_scythe); // Create obj_scythe at the chosen corner at the bottom
} else {
    var spawnX = right_spawn_x;
	instance_create_layer(spawnX, spawn_y, "instances", obj_scythe); // Create obj_scythe at the chosen corner at the bottom
}

}
if timer >= 60 && global.spawn_permission_sythes = true && spawn_amount > 0 && skelespawn_obj.skeletime = false {
	spawn();
	timer = 0
	spawn_amount--
}

if spawn_amount <= 0  {
	spawn_timer++
}

if spawn_amount <= 0 && spawn_timer >= 720 {
	spawn_amount = irandom_range(1 , 5)
	spawn_timer = 0
}