if global.player_score >= score_to_spawn && skeletime = false && object_exists(Player_ghost) {
	instance_create_layer(65, 400, "instances", Skele_obj);
	skeletime = true
	score_to_spawn =+ 5000
}