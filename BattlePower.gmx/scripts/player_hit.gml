/// CAUSA DAÑO A UN PLAYER.

// player_hit(damage,impulse,direction,stun);

if (argument0 <= 0) {exit}          // No pasa ná.

hlth -= round(argument0);           // Sufre daño.

if (hlth <= 0)
    {
    player_kill(false);             // Morir.
    }

motion_add(argument2,argument1);    // Sale volando.
stunned = max(stunned,argument3);   // Aturdido.
// player_talk(P_tlk,S_auc);        // Quejarse. !!!
