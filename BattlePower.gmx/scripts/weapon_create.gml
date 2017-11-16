/// CREA UN ARMA CON LOS PARÁMETROS ENTREGADOS.

// weapon_create(owner,weapon,x,y,speed,direction);

var own,wpn,xxx,yyy,spd,dir;

own = argument0;
wpn = argument1;
xxx = argument2;
yyy = argument3;
spd = argument4;
dir = argument5;

wpn = weapon_obj(wpn);
if (wpn == noone) {exit}

with (instance_create(xxx,yyy,wpn))
     {
     owner = own;
     speed = spd/STEPS;
     direction = dir;
     event_perform(ev_other,ev_user1);
     }
