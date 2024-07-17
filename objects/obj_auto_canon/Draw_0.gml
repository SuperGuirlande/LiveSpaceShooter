//-- Remet le nombre de tirs à zéro quand l'animation redémarre
if ( image_index >= image_number - 1 ) shoots = 0;


if ( instance_exists(obj_ship) ) {
	hit_alpha = obj_ship.hit_alpha;
	hit_color = obj_ship.hit_color;
}

draw_self();
if ( hit_alpha > 0 ) {
	shader_set(sh_hit_flash);	
	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, hit_color, hit_alpha);
	shader_reset();
	hit_alpha = lerp(hit_alpha, 0, .1);
}
