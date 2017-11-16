// Crea un Player y le da las características necesarias.

// player_create(player_num,i_min,i_max);

var num = argument0;

PLAYER[num] = instance_create(0,0,obj_player);
PLAYER[num].i_min = argument1;
PLAYER[num].i_max = argument2;

var i;
for (i=1; i<=WPN; i++)
    {
    PLAYER[num].ammo[i] = max(AMMO[i],0);
    }

PLAYER[num].mass = 10;
PLAYER[num].walk = 4;
PLAYER[num].wait = 3;
PLAYER[num].jump = 2;
