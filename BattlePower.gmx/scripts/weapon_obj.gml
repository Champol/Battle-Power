/// RETORNA EL OBJECT CORRESPONDIENTE DE UNA WEAPON.

// weapon_obj(wpn_index);

switch (argument0)
    {
    case W_TOT: return noone;
    case W_BAZ: return obj_bazooka; 
    case W_GRE: return obj_grenade;
    case W_CLU: return obj_cluster;
    case W_BLA: return obj_blaster;
    case W_HOM: return obj_homing;
    case W_POI: return obj_poison;
    case W_ORB: return obj_orb;
    case W_SPK: return obj_spikes;
    case W_GRP: return obj_grape;
    case W_GAS: return obj_gas;
    case W_PRK: return obj_prikle;
    default: return noone;
    }
