///@description Creating player and his properties

// X axis movement
move_speed = 1.5;
	
	// Movement per frame (speed)
	move_x = 0;  
	move_y= 0;
	vel_x = 0;
	vel_y = 0;

	// Multiplication amount
	sprint_speed = 1.5;

// Jump properties

jump_speed = -4.5; 
grounded = false;
jump_hold_frames = 15;
jump_timer = 0;


// HP and hurt properties

hp = 100;
in_knockback = false;


// Tileset ID for movement of the player

layer_walking_name = "Ground";
collision_tile = layer_tilemap_get_id(layer_walking_name);

