if visible_layer != layer_3 {
backround_grave_fall_menu.triggered = true

}

if visible_layer = layer_2    {
	visible_layer = layer_3
	layer_set_visible(layer_2,false);
	
};

if visible_layer = layer_1  {
	visible_layer = layer_2
	layer_set_visible(layer_1,false);
	
};
