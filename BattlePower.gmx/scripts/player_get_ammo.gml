/// PLAYER RECOGE MUNICIONES.

// player_get_ammo(player,block);

var player,block,wpn,num;

player = argument0;
block = argument1;

if (player == noone)    {exit}
if (!player.alive)      {exit}

// Definir arma.
repeat (37)
    {
    wpn = rir(1,WPN);
    if (AMMO[wpn] == NAN) {continue}
    if (player.ammo[wpn] == INF) {continue}
    break;
    }

// Entregar.
switch (wpn)
    {
    case W_BAZ: case W_GRE: num = 3; break;
    default:                num = 1; break;
    }
player.ammo[wpn] += num;
// player_talk(); /// !!!

// Desaparecer.
with (block)
   {
   depth = -15;
   alarm[1] = 1*FPS;
   mask_index = -1;
   sprite_index = weapon_spr(wpn);
   }
