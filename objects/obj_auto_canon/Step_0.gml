//--- INPUTS ---//
var input_shoot = keyboard_check(vk_space) or mouse_check_button(mb_left);

//--- INPUT SHOOT ---//
if ( input_shoot ) {
	//-- Lance l'animation de l'arme
	image_speed = 1;
	//-- Décalage des projectiles à la création
	var _xx = 9;
	var _yy = 9;
	
	//-- La première balle est tirée à la 3ème frame de l'animation
	if ( shoots == 0 ) and ( floor(image_index) == 2 ) {
		shoots ++;
		instance_create_depth(x - _xx, y - _yy, depth + 1, obj_bullet);
		
	//-- La 2ème balle est tirée à la 4ème frame
	} else if ( shoots == 1 ) and ( floor(image_index) == 3 ) {
		shoots ++;
		instance_create_depth(x + _xx, y - _yy, depth + 1, obj_bullet);
	}
} else {
	//-- Garde les variables à si l'input est lâché
	image_speed = 0;
	image_index = 0;
	shoots = 0;
}

if ( !instance_exists(obj_ship) ) instance_destroy();