enum FACTIONS { KLAED, NAIRAN, NAUTOLAN }

enum ENNEMY_TYPES { BATTLE, BOMBER, DREAD, FIGHTER, FRIGATE, SCOUT, SUPP, TORPEDO }


globalvar ennemies_bases;
ennemies_bases = ds_grid_create(3, 8);

ennemies_bases[# FACTIONS.KLAED, ENNEMY_TYPES.BATTLE] = spr_klaed_battlecruiser_base;
ennemies_bases[# FACTIONS.KLAED, ENNEMY_TYPES.BOMBER] = spr_klaed_bomber_base;
ennemies_bases[# FACTIONS.KLAED, ENNEMY_TYPES.DREAD] = spr_klaed_dreadnought_base;
ennemies_bases[# FACTIONS.KLAED, ENNEMY_TYPES.FIGHTER] = spr_klaed_fighter_base;
ennemies_bases[# FACTIONS.KLAED, ENNEMY_TYPES.FRIGATE] = spr_klaed_frigate_base;
ennemies_bases[# FACTIONS.KLAED, ENNEMY_TYPES.SCOUT] = spr_klaed_scout_base;
ennemies_bases[# FACTIONS.KLAED, ENNEMY_TYPES.SUPP] = spr_klaed_support_base;
ennemies_bases[# FACTIONS.KLAED, ENNEMY_TYPES.TORPEDO] = spr_klaed_torpedo_base;

ennemies_bases[# FACTIONS.NAIRAN, ENNEMY_TYPES.BATTLE] = spr_nairan_battlecruiser_base;
ennemies_bases[# FACTIONS.NAIRAN, ENNEMY_TYPES.BOMBER] = spr_nairan_bomber_base;
ennemies_bases[# FACTIONS.NAIRAN, ENNEMY_TYPES.DREAD] = spr_nairan_dreadnought_base;
ennemies_bases[# FACTIONS.NAIRAN, ENNEMY_TYPES.FIGHTER] = spr_nairan_fighter_base;
ennemies_bases[# FACTIONS.NAIRAN, ENNEMY_TYPES.FRIGATE] = spr_nairan_frigate_base;
ennemies_bases[# FACTIONS.NAIRAN, ENNEMY_TYPES.SCOUT] = spr_nairan_scout_base;
ennemies_bases[# FACTIONS.NAIRAN, ENNEMY_TYPES.SUPP] = spr_nairan_support_base;
ennemies_bases[# FACTIONS.NAIRAN, ENNEMY_TYPES.TORPEDO] = spr_nairan_torpedo_base;

ennemies_bases[# FACTIONS.NAUTOLAN, ENNEMY_TYPES.BATTLE] = spr_nautolan_battlecruiser_base;
ennemies_bases[# FACTIONS.NAUTOLAN, ENNEMY_TYPES.BOMBER] = spr_nautolan_bomber_base;
ennemies_bases[# FACTIONS.NAUTOLAN, ENNEMY_TYPES.DREAD] = spr_nautolan_dreadnought_base;
ennemies_bases[# FACTIONS.NAUTOLAN, ENNEMY_TYPES.FIGHTER] = spr_nautolan_fighter_base;
ennemies_bases[# FACTIONS.NAUTOLAN, ENNEMY_TYPES.FRIGATE] = spr_nautolan_frigate_base;
ennemies_bases[# FACTIONS.NAUTOLAN, ENNEMY_TYPES.SCOUT] = spr_nautolan_scout_base;
ennemies_bases[# FACTIONS.NAUTOLAN, ENNEMY_TYPES.SUPP] = spr_nautolan_support_base;
ennemies_bases[# FACTIONS.NAUTOLAN, ENNEMY_TYPES.TORPEDO] = spr_nautolan_torpedo_base;
