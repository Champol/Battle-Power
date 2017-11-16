/// MOVIMIENTO.

// Saltar.
action_jump();

// Movimiento vertical.
vspd += grav;
vspd = clamp(vspd,-20,+20);
if (vspd > 0)
    {
    motion = FALL;
    grav = GRAV;
    }
if (vspd < 0)
    {
    motion = JUMP;
    }
if (place_meeting(x,y+vspd,obj_solid))
    {
    move_contact_solid(90+180*(motion==FALL),abs(vspd));
    vspd = 0;
    motion -= 1;
    }
y += vspd;
if (motion == FIRM)
    {
    y = round(y);
    }

// Caminar.
action_walk();

// Movimiento horizontal.
hspd = clamp(hspd,-20,+20);
if (place_meeting(x+hspd,y,obj_solid)) and (hspd != 0)
    {
    move_contact_solid(0+180*(side==IZQ),abs(hspd));
    hspd = 0;
    }
x += hspd;
