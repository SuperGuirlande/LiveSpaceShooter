//-- Le moteur & son effet
if ( !is_undefined(engine) ) {			//-- Check si l'instance est créée ( prenez cette habitude pour
	var _spr = engine.sprite;			//-- éviter les FATAL ERROR )
	var _effect = engine.sprite_effect;
	
	draw_sprite(_effect, engine.current_sub, x, y);
	draw_sprite(_spr, 0, x, y);
		if ( hit_alpha > 0 ) {
		shader_set(sh_hit_flash);	
		draw_sprite_ext(_spr, 0, x, y, 1, 1, 0, hit_color, hit_alpha);
		shader_reset();
		hit_alpha = lerp(hit_alpha, 0, .1);
	}
}

//--Image index
var _ratio = max_hp / image_number;

image_index = current_hp div _ratio;
if ( image_index >= image_number ) image_index = image_number - 1;


//-- Le vaisseau
draw_self();

if ( hit_alpha > 0 ) {
	shader_set(sh_hit_flash);	
	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, hit_color, hit_alpha);
	shader_reset();
	hit_alpha = lerp(hit_alpha, 0, .1);
}

