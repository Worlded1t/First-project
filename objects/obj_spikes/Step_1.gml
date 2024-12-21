/// @description Knockback player and lose HP

// Collision with the player

if place_meeting (x, y-1, obj_player)
{
	// Reduce HP
	
	obj_player.hp -= spike_damage;
	
	// Get direction for knockback 
	
	var _x_sign = sign(obj_player.x - x);
	var _y_sign = sign(obj_player.y - y);
	
	// Move player in knockback
	
	obj_player.vel_x += _x_sign * knockback_force * 4;
	obj_player.vel_y = 0;
	obj_player.vel_y += _y_sign * knockback_force;
	obj_player.in_knockback = true;
	obj_player.grounded = 0;
}