//Création d'un projectile
if ( !is_undefined(my_weapon) ) {
	my_weapon_counter ++;
	
	if ( my_weapon_counter >= my_weapon_delay ) {
		my_weapon_counter = 0;
		
		my_weapon.create();
	}
}	