/// DAÑAR EL TERRENO.

// Daño a los bloques.
with (obj_block)
    {
    if (distance_to_point(other.x,other.y) < other.X_des)
        {event_perform(ev_other,ev_user1)}
    }

/* JP decidir si va o no.

// Repasa los ground.
with (obj_ground)
    {
    if (distance_to_point(other.x,other.y) < other.X_des)
        {event_perform(ev_other,ev_user1)}
    }

// Reconstruye el terreno.
with (obj_beam) {instance_destroy()}   
Terrain_Beam(9,24);   !!!
*/
