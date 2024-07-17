//--- INPUTS ---//
var input_left = keyboard_check(vk_left) or keyboard_check(ord("Q"));
var input_right = keyboard_check(vk_right) or keyboard_check(ord("D"));

//--- GOTO DIE ---//
if ( current_hp <= 0 ) {
	instance_create_depth(x, y, depth - 1, obj_player_destruction);
	instance_destroy();
}



//--- MOUVEMENT HORIZONTAL ---//
if ( input_left ) {
	x -= move_speed;			//-- On bouge le joueur
}
if ( input_right ) {
	x += move_speed
}
//-- On limite les mouvements du joueur à la room
var _sprWidth = sprite_get_width(sprite_index);
var _offset = _sprWidth / 2 - 9;
x = clamp(x, 0 + _offset, room_width - _offset);
weapon.x = x;

//--- EFFETS DE MOTEUR ---//
if ( input_left ) or ( input_right ) {	/// POWER ///
	engine.target_subs = engine.power_subs;			//-- Définition des subimages
	engine.sprite_effect = engine.effect_power;		//-- Définition du sprite
} else {								/// IDLE ///
	engine.target_subs = engine.idle_subs;
	engine.sprite_effect = engine.effect_idle;
}										

if ( !is_undefined(engine) ) engine.updateAnim();