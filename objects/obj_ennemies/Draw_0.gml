//Début de l'nimation de destruction
if ( my_hp <= 0 ) and ( !destruction_anim ) {
	destruction_anim = true;
	sprite_index = my_destruction_sprite;
	image_index = 0;
}

//Destrction à la fin de l'anim
if ( destruction_anim ) {
	if ( image_index > image_number - 1 ) instance_destroy();
}

//Sprite de base
draw_self();
//Hit flash
if ( hit_alpha > 0 ) {
	shader_set(sh_hit_flash);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, hit_alpha);
	shader_reset();
	hit_alpha -= 0.1;
}