counter ++;

/** Création d'un ennemie aléatoire **/
if ( counter >= my_delay ) {
	counter = 0;
	my_delay = random_range(room_speed * 4, room_speed * 10);
	var _choice = choose( obj_scout, obj_fighter );
	
	var _ennemy = instance_create_depth(x, y + 24, depth - 1, _choice);
	
	with ( _ennemy ) {
		
		speed = random_range(.2, .6);
		direction = random_range(240, 300);
	}
}