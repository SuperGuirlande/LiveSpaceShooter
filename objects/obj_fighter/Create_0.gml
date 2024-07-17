event_inherited();

my_hp = 5;

my_base_sprite = spr_klaed_fighter_base;
my_destruction_sprite = spr_klaed_fighter_destruction;


my_weapon_delay = random_range(room_speed * 2, room_speed * 5);

my_weapon = {};
my_weapon.sprite = spr_klaed_projectile_bigbullet;
my_weapon.speed = 3;
my_weapon.direction = 270;
my_weapon.damages = 20;

my_weapon.create = function() {
	my_weapon_delay = random_range(room_speed * 2, room_speed * 5);

	var _dir = 235;
	repeat(3) {
		var _projectile = instance_create_depth(x, y, depth -10, obj_projectile);
			_projectile.setup = true;
			_projectile.direction = _dir;
			_dir += 35;
			_projectile.sprite_index = my_weapon.sprite;
			_projectile.speed = my_weapon.speed;
			_projectile.damages = my_weapon.damages;
	}
}		
