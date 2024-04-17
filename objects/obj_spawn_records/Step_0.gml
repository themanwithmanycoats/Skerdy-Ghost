if global.player_score >= score_to_meet {
	spawn_score = true;
	score_to_meet += 800;
}


if global.spawn_permission_records = true && spawn_score = true && instance_exists(pillar_parent) && global.Game_Over = false  {
instance_create_layer(pillar_parent.x+10,pillar_parent.y+2,"Instances_1",obj_record)
instance_create_layer(pillar_parent.x+10,pillar_parent.y+2,"Instances_1",back_light)
spawn_score = false	
}
