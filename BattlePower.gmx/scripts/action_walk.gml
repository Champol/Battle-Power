/// MUEVE EL PLAYER EN LA DIRECCIÓN INDICADA.

// Aturdido.
if (stunned) {exit}

// Agachado.
if (crouched) {exit}

// Movimiento.
move = sign(input[K_DER]-input[K_IZQ]);
hspd = move*walk;

// Cambio de sentido.
if (side == -move)
   {
   side = move;
   aim.dir = 180-aim.dir;
   }
