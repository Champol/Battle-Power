/// COLISIÓN ENTRE DOS ARMAS.

// Fantasmas.
if (self.ghost or other.ghost) {exit}

// Firme.
if (self.still) {exit}

// Explotar.
if (self.coll == EXPLODE or other.coll == EXPLODE)
   {
   weapon_explode(other);
   weapon_explode(self);
   }

// Rebotar.
if (self.coll == BOUNCE)
    {
    // Contra una firme.
    if (other.still)
        {
        weapon_collision_wpn_bs();
        }
    // Entre sí.
    else
        {
        weapon_collision_wpn_bb();
        }
    }
