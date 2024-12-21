/// @description Properties
#macro RESOLUTION_X 512
#macro RESOLUTION_Y 288

// Get ID of the view of the camera object (in room settings)

player_camera = view_get_camera(0);

// Position of the camera

cam_x = camera_get_view_x(player_camera);
cam_y = camera_get_view_y(player_camera);

// Target position for the camera

target_x = obj_player.x - RESOLUTION_X/2;
target_y = obj_player.y - RESOLUTION_Y/2;

// Smoothing camera (%)

cam_smooth_x = 0.05;
cam_smooth_y = 0.1;