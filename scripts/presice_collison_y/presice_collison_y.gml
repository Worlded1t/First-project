// It moves the character pixel-by-pixel until its velocity for that axis is covered, or a collision is found.
// 'move_count' is how many total pixels the character needs to move this frame. It is the absolute value of the velocity on an axis.
// 'move_once' is the amount of pixels it needs to move once, before checking for a collision. It is 1, 0, or -1.

function presice_collison_y(move_count_y, move_once)
{
// This runs a loop, which runs 'move_count' times. All actions attached to this are repeated that many amount of times.
repeat (move_count_y)
	{
	// This calls the check_collision function to check for collisions on the Y axis, if moved by the move_once value.
	// The result of the function, either true or false, is stored in the 'collision_found' variable, which is temporary.
	var _collision_found = check_collision(0, move_once)


	// This checks if collision_found is false, meaning a collision was not found, and the player is free to move once on the Y axis.
	if (!_collision_found)
	{
		// In that case, move_once is added to the Y coordinate of the character.
		y += move_once;
	}
	// This 'else' block runs if a collision was found.
	else
	{
		// In that case, we reset the Y velocity to 0, so the character stops its movement on that axis.
		
		vel_y = 0;
		
		// If character falls down or stays the same y posisiton, make him grounded
		
		if y >= yprevious
		{
			grounded = true;
		}
		
		// Then we break out of the Repeat loop, as no more collision checks are required.
		break;
	}
	}
}