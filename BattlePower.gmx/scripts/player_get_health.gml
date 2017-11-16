/// PLAYER RECOGE UNA HEALTH BOX.

// player_get_health(player,block);

var player,block;

player = argument0;
block = argument1;

if (player == noone)    {exit}
if (!player.alive)      {exit}

// Mejorar.
with (player)
    {
    player_heal(+25);
    }

// Desaparecer.
with (block)
   {
   depth = -15;
   alarm[1] = 1*FPS;
   mask_index = -1;
   }
