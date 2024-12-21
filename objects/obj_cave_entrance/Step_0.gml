/// @description Hide the cave

// Hides a cave then player not in it

layer_set_visible(cave_hide,true)

with (obj_collisions)
{
	if place_meeting(x,y,obj_collisions) = 1
	{
		image_alpha = 0;
	}
}