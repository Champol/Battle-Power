/// ORIENTACIÓN DE LA WEAPON.

// Rotar.
if (rotate > 0)
    {
    image_angle -= hspeed*2*rotate*STEPS;
    }

// Directo.
else
    {
    image_angle = direction;
    }
