/// RUIDO DE LA EXPLOSIÓN.

switch (type)    
    {
    case W_BAZ: case W_HOM: case W_SPK: case W_PRK: snd = snd_boom1; break;
    case W_GRE: case W_CLU: case W_GRP:             snd = snd_boom2; break;
    case W_BLA:                                     snd = snd_bla_impact; break;
    case W_ORB:                                     snd = snd_orb_bounce; break;
    case -B_ATOMIC:                                 snd = snd_boom3; break;
    case -B_HEALTH: case -B_CHEST:                  snd = snd_boom4; break;
    }
// sound_effect(snd,1); JP
