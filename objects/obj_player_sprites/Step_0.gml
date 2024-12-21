/// @description Follow the player


x = obj_player.x;
y = obj_player.y;

// Sprite of the player in the air

if obj_player.grounded = false
{
	if obj_player.vel_y <= 0
		{
			sprite_index = spr_player_jump_up;
		}
	else sprite_index = spr_player_jump_down;
	
// Direction of the player in the air

	if obj_player.move_x > 0
	{
		image_xscale = 1;
	}
	else 
	{   
		if obj_player.move_x < 0
		{
			image_xscale = -1;
		}
	}
	
}
else 
{

// Direction and sprite of the player on land

	if obj_player.move_x != 0
	{
		image_xscale = sign(obj_player.move_x);
		
		if keyboard_check(vk_shift) 
		{
			sprite_index = spr_player_run;
		}
		else sprite_index = spr_player_walk;
	}
	else 
	{   
		sprite_index = spr_player_idle;
	}
}