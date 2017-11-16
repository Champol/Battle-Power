/// GIRA LA MIRA HACIA DONDE INDIQUE EL JUGADOR.

// action_aim(+1/0/-1);

var dir = argument0;

// Fijar la mira.
if (dir == 0)   {aim.spd = 0; exit}

// Se gira la mira en la dirección deseada.
aim.spd = min(aim.spd+0.4,6);
aim.dir += dir*side*aim.spd;

// Si mira hacia la derecha, ajustar la mira.
if (side == DER)
   {
   aim.dir = clamp(aim.dir,-090,+090);
   }

// Si mira hacia la izquierda, ajustar la mira.
if (side == IZQ)
   {
   aim.dir = clamp(aim.dir,+090,+270);
   }
