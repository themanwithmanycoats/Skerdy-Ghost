// Update the camera position with lerp
var lerping_speed = 0.025;

if global.home_button_target_x == global.home_button_target_x_set && global.home_button_target_y == global.home_button_target_y_set {
    camera_set_view_pos(view_camera[0], global.home_button_target_x_set, global.home_button_target_y_set);
} else {
    var new_x = lerp(camera_get_view_x(view_camera[0]), global.home_button_target_x_set, lerping_speed);
    var new_y = lerp(camera_get_view_y(view_camera[0]), global.home_button_target_y_set, lerping_speed);
    
    camera_set_view_pos(view_camera[0], new_x, new_y);
}

// Update the object position relative to the camera's view
x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);
