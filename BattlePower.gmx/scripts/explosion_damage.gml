/// DAÑO DE LA EXPLOSIÓN.

switch (type)
    {
    case W_BAZ:     X_dmg = 25; X_min = 15; X_max = 30; X_des = 30; X_emp = 3.0; break;
    case W_GRE:     X_dmg = 30; X_min = 15; X_max = 45; X_des = 30; X_emp = 3.0; break;
    case W_CLU:     X_dmg = 15; X_min = 15; X_max = 25; X_des = 15; X_emp = 2.0; break;
    case W_GRP:     X_dmg = 15; X_min = 15; X_max = 25; X_des = 15; X_emp = 2.0; break;
    case W_HOM:     X_dmg = 30; X_min = 15; X_max = 30; X_des = 30; X_emp = 3.0; break;
    case W_ORB:     X_dmg = 30; X_min = 15; X_max = 60; X_des = 00; X_emp = 3.5; break;
    case W_SPK:     X_dmg = 10; X_min = 15; X_max = 20; X_des = 15; X_emp = 2.0; break;
    case W_PRK:     X_dmg = 10; X_min = 05; X_max = 20; X_des = 15; X_emp = 2.0; break;
     
    case -B_ATOMIC: X_dmg = 30; X_min = 20; X_max = 45; X_des = 30; X_emp = 3.0; break;
    case -B_HEALTH: X_dmg = 25; X_min = 20; X_max = 30; X_des = 10; X_emp = 2.0; break;
    case -B_CHEST:  X_dmg = 25; X_min = 20; X_max = 30; X_des = 10; X_emp = 2.0; break;
    default:        X_dmg = 00; X_min = 00; X_max = 01; X_des = 00; X_emp = 0.0; break;
    }
