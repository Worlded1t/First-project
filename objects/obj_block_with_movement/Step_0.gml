// Falling of the block


if !place_meeting(x, y+1, [obj_player.collision_tile, obj_block_with_movement]) and move_y_block < 30
{
		move_y_block = move_y_block + global.grav;
		move_and_collide(move_x_block, move_y_block, obj_player.collision_tile);
}

else move_y_block = 0;
	  

// Check button pressed for moving block

if keyboard_check(ord("C")) and (place_meeting(x-1, y , obj_player) or place_meeting(x+1, y , obj_player))
{
	move_x_block = obj_player.vel_x;
	move_and_collide(move_x_block, move_y_block, obj_collisions);
}
