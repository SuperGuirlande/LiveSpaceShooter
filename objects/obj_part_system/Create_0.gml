randomize();
globalvar part_system, part_type_bullet;

//Création du sytème de particules
part_system = part_system_create();

//Création du type de particules ( bullet de base )
part_type_bullet = part_type_create();
//Paramètres du part_type
part_type_sprite(part_type_bullet, spr_part_bullet, 0, 0, 0);
part_type_size(part_type_bullet, .6, 1, -0.075, 0);
part_type_direction(part_type_bullet, 0, 359, 0, 0);
part_type_speed(part_type_bullet, 2, 4, -0.1, 0);
part_type_life(part_type_bullet, 10, 20);
part_type_alpha3(part_type_bullet, 1, 1, 0);