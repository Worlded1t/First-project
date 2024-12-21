/// @description Pixel - perfect collisions

// The section below handles pixel-perfect collision checking.
// It does collision checking twice, first on the X axis, and then on the Y axis.

// Checking X axis
var _move_count_x = abs(vel_x);
var _move_once = sign(vel_x);
presice_collison_x(_move_count_x,_move_once);

// Checking Y axis
var _move_count_y = abs(vel_y);
var _move_once = sign(vel_y);
presice_collison_y(_move_count_y,_move_once);


// Jumping

	// Initiating jump
	
if keyboard_check_pressed(vk_space) and grounded = true
{
	jump_timer = jump_hold_frames;
	grounded = false;
}

	// Breaking jump if button not held

if !keyboard_check(vk_space)
{
	jump_timer = 0;
}

	// Perform jump

	if jump_timer > 0 
	{
		vel_y = jump_speed;
		jump_timer --;
	}





