/// SPAWNEA UN PLAYER EN UNA POSICIÓN ADECUADA.

// Ubicación.
// x = field_x(terrain_spawn(i_min,i_max,false));
x = choose(200,400,600,800);
y = 0;
// move_contact_solid(270,100);

// Estado.
alive = true;
hlth = 100;
motion = FALL;
grav = GRAV;
hspd = 0;
vspd = 0;
spawn = 2*FPS;
immune = 3*FPS;

// Orientación.
if (x < W/2)
    {
    side = DER;
    aim.dir = 045;
    }
else
    {
    side = IZQ;
    aim.dir = 135;
    }

// Display.
with (disp)
   {
   x = owner.x;
   xprevious = owner.x;
   hspeed = 0;
   visible = true;
   act = false;
   dir = 0;
   }
