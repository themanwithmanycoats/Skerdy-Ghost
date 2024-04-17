layer_set_visible("Effect_1", true);
if (spawn_timer <= spawn_duration) {
    if (spawn_timer % spawn_interval == 0) {
        var spawn_x = random_range(min_spawn_x, max_spawn_x);
        var spawn_y = random_range(min_spawn_y, max_spawn_y);
        instance_create_layer(spawn_x, spawn_y, "Instances", Deathspawn_obj);
    }
    spawn_timer++;
}