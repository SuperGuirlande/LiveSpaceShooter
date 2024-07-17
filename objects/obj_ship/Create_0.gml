//-- Fige à la première frame ( 0 dégat )
image_index = 0;
image_speed = 0;

//-- Vitesse horizontale
move_speed = 2;


//-- Création du moteur de base
if ( is_undefined(engine) ) {
	engine = new BaseEngine();
}

//-- Création de l'auto-canon de base
if ( is_undefined(weapon) ) {
	weapon = instance_create_depth(x, y, depth + 1, obj_auto_canon);
}

//-- Santé et dégats
hit_alpha = 0;
hit_color = c_white;

max_hp = 100;
current_hp = 91;

