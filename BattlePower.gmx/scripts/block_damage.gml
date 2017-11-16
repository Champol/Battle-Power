/// DAÑA UN BLOCK CON LAS CONSECUENCIAS CORRESPONDIENTES.

// block_damage(author,block);

var player,block;

player = argument0;
block = argument1;

if (player == noone)    {exit}
if (!player.alive)      {exit}

// Destruir.
with (block)
   {
   event_perform(ev_other,ev_user0);
   }
