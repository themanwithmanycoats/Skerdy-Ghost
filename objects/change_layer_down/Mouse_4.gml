if change_layer_up.visible_layer != change_layer_up.layer_1 {
backround_grave_fall_menu.triggered = true
}

if change_layer_up.visible_layer = change_layer_up.layer_2    {
	change_layer_up.visible_layer = change_layer_up.layer_1
	layer_set_visible(change_layer_up.layer_2,false);
	
};

if change_layer_up.visible_layer = change_layer_up.layer_3  {
	change_layer_up.visible_layer = change_layer_up.layer_2
	layer_set_visible(change_layer_up.layer_3,false);
	
};
