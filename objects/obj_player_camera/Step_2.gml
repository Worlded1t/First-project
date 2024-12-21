/// @description Вставьте описание здесь


// Get current camera position  

cam_x = camera_get_view_x(player_camera);
cam_y = camera_get_view_y(player_camera);

// Get target position for camera

if sign(obj_player.vel_x) !=0
{
	target_x = obj_player.x - RESOLUTION_X/2 + sign(obj_player.vel_x)*45;
}

target_y = obj_player.y - RESOLUTION_Y/2;

// Restrict target camera to room bounds

target_x = clamp(target_x,0,room_width - RESOLUTION_X);
target_y = clamp(target_y,0,room_height - RESOLUTION_Y);

// Smoothly moving camera to position

cam_x = lerp(cam_x, target_x, cam_smooth_x);
cam_y = lerp(cam_y, target_y, cam_smooth_y);

// Apply changes

camera_set_view_pos(player_camera,cam_x,cam_y);
