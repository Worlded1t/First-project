/// @description Collision with the player

// Add points to game controller

obj_game.points +=1;

// Heal player if his HP is not full

if obj_player.hp < 100
{
	obj_player.hp +=5;
}

instance_destroy();