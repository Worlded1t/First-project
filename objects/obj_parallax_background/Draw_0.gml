/// @description Parallaxing

// Where to draw background

var _camera_x = camera_get_view_x(obj_player_camera.player_camera);
var _camera_y = camera_get_view_y(obj_player_camera.player_camera);
 
//Parallaxing value for every layer
 
var _p_amount_1 = 1;
var _p_amount_2 = .75;
var _p_amount_3 = .5;
var _p_amount_4 = .25;
// Draw sprites with different depth (lower value of _p_amount - closer the layer)
 
draw_sprite_tiled(bg_darkforest_background,0, _camera_x*_p_amount_1, _camera_y);
draw_sprite_tiled(bg_darkforest_middleground,0, _camera_x*_p_amount_2, _camera_y);
draw_sprite_tiled(bg_darkforest_shadow,0, _camera_x*_p_amount_3, _camera_y);
draw_sprite_tiled(bg_darkforest_foreground,0, _camera_x*_p_amount_4, _camera_y);
