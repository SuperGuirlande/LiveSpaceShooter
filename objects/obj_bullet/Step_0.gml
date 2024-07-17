if ( y < -32 ) instance_destroy();

if ( place_meeting(x, y, obj_ennemies) ) {
	var _inst = instance_place(x, y, obj_ennemies);
	
	if ( _inst.my_hp > 0 ) {
		_inst.hit_alpha = 1;
		_inst.my_hp --;
		instance_destroy();
	}
}