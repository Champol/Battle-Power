/// DESTRUYE UN BLOQUE CON LAS CONSECUENCIAS CORRESPONDIENTES.

// block_destroy(author,block);

var player,block;

player = argument0;
block = argument1;

if (player == noone) {exit}

with (block)
   {
   event_perform(ev_alarm,0);
   }
