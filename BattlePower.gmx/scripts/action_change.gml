// CAMBIA DE ARMA O ACTUALIZA LAS MUNICIONES.

// action_change(weapon,change);

var i,wpn,chg;

wpn = argument0;
chg = argument1;

// Si no son infinitas, se le resta una.
if ((wpn != W_TOT) and (ammo[wpn] <= INF))
    {
    ammo[wpn] -= 1;
    }

// Cambia de arma si se quiere.
weapon = index_wrap(weapon+chg,1,WPN);

// Se cuenta la cantidad total de armas.
ammo[W_TOT] = 0;
for (i=1; i<=WPN; i++)
    {
    ammo[W_TOT] += ammo[i];
    }

// Si no quedan municiones, queda pendiente.
if (ammo[0] == 0)
    {
    weapon = 0;
    disp.wpn = 0;
    exit;
    }

// Mientras no queden municiones de esa arma, buscar otra.
while (ammo[weapon] < 1)
    {
    weapon = index_wrap(weapon+1,1,WPN);
    }

// Define el arma.
disp.wpn = weapon;
