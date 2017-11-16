/// EFECTO DE LA GRAVEDAD EN UN BLOCK.

// Si va a explotar, quieta.
if (alarm[0] > 0)
    {
    vspeed = 0;
    exit;
    }

// Si está flotando, cae.
if (!place_meeting(x,y+1,obj_block))
    {
    falling = true;
    vspeed += GRAV;
    }

// Si topa, se detiene.
else
    {
    x = xprevious; y = yprevious;
    with (obj_block) {solid = true}
    move_contact_solid(270,vspeed);
    with (obj_block) {solid = false}
    vspeed = 0;
    falling = false;
    }

// Si aplasta un Player, detenerse.
if (vspeed > 0 && place_meeting(x,y+vspeed,obj_player))
    {
    x = xprevious; y = yprevious;
    with (obj_player) {solid = true}
    move_contact_solid(270,vspeed);
    with (obj_player) {solid = false}
    vspeed = 0;
    }

// Acotar velocidad.
vspeed = clamp(vspeed,0,15);
