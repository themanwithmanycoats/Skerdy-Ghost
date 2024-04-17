instance_create_layer(obj_pumpkin.x ,obj_pumpkin.y,"Ready_inst", obj_pumkin_death);
layer_set_visible("pumpkin_time", true);

audio_play_sound(Poof34,10,false,1,0,1.7)
global.multiplyer_is_active = true
global.score_multiplyer_timer = 600
instance_destroy();