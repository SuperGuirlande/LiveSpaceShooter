///--- MOTEURS : STRUCTURES DE DONNÉES ---//

//-- Constructor parent, pour les variables par défaut
function Engines() constructor {
	//-- Sprite du moteur
	sprite = undefined;
	
	//-- Sprites des effets ( flammes )
	effect_idle = undefined;  //-- Immobile
	effect_power = undefined; //-- En mouvement
	
	//-- Longueur d'animation des effets
	idle_subs = 3;
	power_subs = 4;
	
	//-- Animation idle à la création
	target_subs = idle_subs;
	sprite_effect = effect_idle;
	
	//-- Vitesse d'animation
	current_sub = 0;
	anim_speed = 10 / room_speed;
	
	//-- Vitesse horizontale
	move_speed = 2;

	//-- Function d'animation de l'effet, à appeler dans 'étape'
	function updateAnim() {
		if ( current_sub <= target_subs - 1 ) {
			current_sub += anim_speed;
		} else {
			current_sub = 0;	
		}
	}
}

//-- Moteur de base du jeu
function BaseEngine() : Engines() constructor {
	
	sprite = spr_base_engine;
	effect_idle = spr_base_engine_effect_idle;
	effect_power = spr_base_engine_effect_power;
}