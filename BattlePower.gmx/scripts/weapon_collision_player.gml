/// IMPACTAR CONTRA UN PLAYER.

if (!other.alive)       {exit}
if (owner == other.id)  {exit}

// Electric Orb.
if (type = W_ORB)
    {
    coll = EXPLODE;
    }

// Rebotar.
if (coll = BOUNCE)
    {
    other.solid = true;
    move_bounce_solid(true);
    other.solid = false;
    speed *= elas/2;
    }

// Explotar.
if (coll = EXPLODE)
    {
    x = xprevious;
    y = yprevious;
    other.solid = true;
    move_contact_solid(direction,speed);
    other.solid = false;
    weapon_explode(self);
    }


