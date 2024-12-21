/// @description 
//Get Move speed of the player

if vel_y < 10
{ 
	vel_y +=global.grav;
}

move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
vel_x = move_x * move_speed;
