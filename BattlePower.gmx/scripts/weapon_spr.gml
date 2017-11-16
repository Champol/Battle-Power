/// RETORNA EL SPRITE CORRESPONDIENTE DE UNA WEAPON.

// weapon_spr(wpn_index);

switch (argument0)
    {
    case W_BAZ: return spr_bazooka;
    case W_GRE: return spr_grenade;
    case W_CLU: return spr_cluster
    case W_BLA: return spr_blaster;
    case W_HOM: return spr_homing;
    case W_POI: return spr_poison;
    case W_ORB: return spr_orb;
    case W_SPK: return spr_spikes;
    default: return -1;
    }
