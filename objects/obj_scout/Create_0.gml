event_inherited();

my_hp = 3;

my_base_sprite = spr_klaed_scout_base;
my_destruction_sprite = spr_klaed_scout_destruction;

my_weapon_delay = random_range(room_speed * 2, room_speed * 5);

my_weapon = {};
my_weapon.sprite = spr_klaed_projectile_bullet;
my_weapon.speed = 2;
my_weapon.direction = 270;
my_weapon.damages = 10;

my_weapon.create = function() {
	var _projectile = instance_create_depth(x, y, depth -10, obj_projectile);
	_projectile.my_weapon = my_weapon;	
	my_weapon_delay = random_range(room_speed * 2, room_speed * 5);

}


/// ENGINE CREATION
/*
if ( is_undefined(my_engine) ) {
	my_engine = instance_create_depth(x, y, depth + 1, obj_ennemies_engine);
	my_engine.sprite_index = spr_klaed_scout_engine;
}