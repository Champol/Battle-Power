/// IMPACTAR CONTRA EL TERRENO.

// Explosivo.
if (other.type == B_ATOMIC)
   {
   move_contact_solid(direction,speed);
   block_destroy(owner,other);
   weapon_explode(self);
   }

// Rebotar.
if (coll = BOUNCE)
    {
    if (place_meeting(x,y+1,obj_solid) and speed < 1)
        {
        if (position_meeting(x,y+7,obj_solid))
           {
           move_contact_solid(270,3);
           speed = 0;
           steady = true;
           }
        else
            {
            hspeed = 1*sign(y-other.y);
            }
        exit;
        }
    else
       {
       move_bounce_solid(true);
       speed *= elas;
       }
    weapon_target(GRAV,WIND,alarm[0]);
    sound_effect(snd_wpn_bounce,0.5);
    }

// Explotar.
if (coll = EXPLODE)
    {
    x = xprevious; y = yprevious;
    move_contact_solid(direction,speed);
    weapon_explode(self);
    }
