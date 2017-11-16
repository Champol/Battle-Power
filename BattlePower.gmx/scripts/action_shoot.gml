/// DISPARA EL ARMA CORRESPONDIENTE.

// action_shoot();

// Permite disparar nuevamente.
if (choosing == 0.1)
   {
   choosing = 0;
   exit;
   }

// Condicionantes.
if (ammo[weapon] < 1)               // Municiones.
    {
    action_change(0,+1);
    aim.pow = 0;
    }
if (aim.wait > 0)   {aim.pow = 0}   // Demora.
if (stunned)        {aim.pow = 0}   // Atontado.
if (aim.pow == 0)   {exit}          // Descargado.

// Si es Laser Gun, se desbloquea.
if (weapon == W_BLA)
   {
   // Cosas. !!!
   }

// Si puede, tonces dispara.
weapon_create(id,weapon,aim.x,aim.y,aim.pow,aim.dir);   // Crea el arma con sus propiedades.
action_change(weapon,0);                                // Quita un arma y las actualiza.
aim.wait = FPS*wait;                                    // Impone intervalo de tiempo.
aim.last = aim.pow;                                     // Marca la potencia del disparo.
aim.pow = 0;                                            // Devuelve el marcador a cero.
