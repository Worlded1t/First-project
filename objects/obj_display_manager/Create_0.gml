/// @description Вставьте описание здесь
// Display parameters

ideal_height = 288;
ideal_width = 0;
zoom = 1;

aspect_ratio = display_get_width()/display_get_height();
ideal_width = round(ideal_height*aspect_ratio);

// ideal_height = ideal_width / aspect_ratio if i wanna scale height

// Check for odd numbers because monitors have even amounts of pixels

if (ideal_width and 1)
{
	ideal_width ++;
}

if (ideal_height and 1)
{
	ideal_height ++;
}

// Calculate max zoom

max_zoom = floor(display_get_width()/ideal_width);

// Setting camera for every room automaticaly

var _i = 1;

for (_i=  1; _i <=room_last; _i++)
{
	if room_exists(_i)
	{
		room_set_viewport(_i,0,true,0,0, ideal_width,ideal_height);
		room_set_view_enabled(_i,true);
	}
}

// Resizing another layers
window_set_fullscreen(true);
camera_set_view_size(view_camera[0],display_get_width(),display_get_height());
surface_resize(application_surface,display_get_width(),display_get_height());

room_goto_next();