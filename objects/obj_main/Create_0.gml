/////////////////////////////////////////////////////////////s
/////////////////////////////////////////////////////////////
/////////////////// PROJET SPACE SHOOTER ////////////////////
/////////////////// GAME MASTER ACADEMY  ////////////////////
//////////////// ON CODE UN SHOOTER EN LIVE /////////////////
/////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////


//-- Variables globales pour les 3 objets principaux
globalvar player, weapon, engine;
player = undefined; //-- Le joueur ( le vaisseau )
weapon = undefined; //-- Son arme
engine = undefined; //-- Son moteur

//-- Position de départ
startX = room_width / 2;
startY = 420;

//-- Création du vaisseau
if ( is_undefined(player) ) { //-- Toujours vérifier si l'instance n'éxiste pas déjà
	player = instance_create_layer(startX, startY, "i_main", obj_ship);
}

//-- Sytème de particules 
if ( !instance_exists(obj_part_system) ) {
	instance_create_layer(0, 0, "i_main", obj_part_system);
}