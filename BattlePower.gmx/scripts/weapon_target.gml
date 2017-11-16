/// CALCULA EL PUNTO DE IMPACTO DE UN ARMA DISPARADA.

// weapon_target(gravity,wind,timer);

var i,grav,wind,time;
grav = argument0;
wind = argument1;
time = argument2;

X = x;
Y = y;

for (i=0; i<time; i++)
    {
    X += hspeed+i*wind/mass;
    Y += vspeed+i*grav;
    if (place_meeting(X,Y,obj_solid))
        {exit}
    // Falta chocar contra otro player.
    }
