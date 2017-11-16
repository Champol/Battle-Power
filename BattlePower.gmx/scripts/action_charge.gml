/// CARGAR EL ARMA QUE SE VA A DISPARAR.

// Inventario.
if (choosing) {exit}

// Sin municiones.
if (ammo[weapon] < 1)
    {
    action_change(0,+1);
    aim.spd = 0;
    exit;
    }

// Pistola Laser.
if (weapon == W_BLA)
   {
   // PENDIENTE.
   }

// Cargar disparo.
aim.pow = min(aim.pow+0.5,POW);
